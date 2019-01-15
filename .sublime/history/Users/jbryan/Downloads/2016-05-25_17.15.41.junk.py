#!/usr/bin/python
import MySQL
import sys
import string
import whrandom
import crypt

def Help():
	print 'Syntax: %s add username password isadmin'%sys.argv[0]
	print 'Syntax: %s remove username'%sys.argv[0]
	print 'Syntax: %s list\n'%sys.argv[0]
	print 'Add will create users into the adsl_users table.'
	print 'Remove deletes an existing user.'
	print 'List displays all users.\n'
	print 'Example:'
	print 'Create user john with password infinity admin level 1 type:'
	print '%s add john infinity 1'%sys.argv[0]

	sys.exit(1)

def Add(db,username,password,isadmin):
	# check to see if user exists
	checkuser = db["select * from adsl_users where username = '%s'" % username]
	if checkuser:
		print 'User already exists\n'
		sys.exit(1)
	# pw is the new encrypted user password
	pw = crypt.crypt(sys.argv[3],temp[-2:])

	# User doesn't exist so we add user
	db['insert into adsl_users VALUES("%s" ,"%s",%s )' % (username,pw,isadmin)]
	print '%s added sucessfully into the adsl database with admin level %s\n' % (username,isadmin)
	return

def Remove(db,username):
	# check to see if user exists
	checkuser = db["select * from adsl_users where username = '%s'" % username]
	if not checkuser:
		print 'User does not exist.\n'
		sys.exit(1)
	# User exists so we remove the user
	db["delete from adsl_users where username = '%s'" % username]
	print '%s removed sucessfully from the adsl database\n' % username
	return

def List(db):
	print '%-20sAccess'%'Username'
	for item in db['select username,isadmin from adsl_users']:
		print '%-20s%s'%(item[0],item[1])
	return

if __name__ == '__main__':

	Operations = {'add': Add,
		'remove': Remove, 'list': List }

	try:
		command = sys.argv[1]
	except:
		print 'No command specified'
		Help()

	try:
		username = sys.argv[2]
		for c in username:
			if 'a' > c > 'z':
				print 'bad username\n'
				sys.exit(1)
	except:
		pass


	if not Operations.has_key(command):
		print "Command must be add or remove"
		sys.exit(1)

	if len(sys.argv)-1 != Operations[command].func_code.co_argcount:
		print 'Error, incorrect number of arguments.'
		Help()


	# Database info change as necessary
	# db_user is the MySQL username
	# db_pw is the MySQL password
	# db_ip is the IP address where the MySQL database resides
	db_user = 'billing'
	db_pw = 'RakeItIn'
	db_ip = '207.71.234.21'

	# Connect to the database
	db=MySQL.connect(db_ip,db_user,db_pw)
	db.selectdb('adsl')

	# Encrypt the password with a random salt
	temp = whrandom.randint(0,100000)
	temp = str(temp)
	temp = crypt.crypt(temp,temp)

	args = tuple([db] + sys.argv[2:])
	apply(Operations[command],args)
