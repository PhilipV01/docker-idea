## country-info-db-main
This is **country-info-db-main** branch with **bitnami/mysql** image.

For this container we used mySql. We  decided to use bitnami version instead (which was easier to set in terms of, among other things, PORT).

Bittnami is a well-known company with VMware (which develops virtualization technology) behind it.
 
 We started with bitnami sql connection beacause its easer to connect database with php and 
 Allowing empty password for our environment variables and easier connection setting throught the development.
 On the other hand we used $PORT environmetn variable as  MYSQL_PORT_NUMBER.
 
 #### How we can check data in db? 
 Once you created the container(s) and running them, you can check your data on Sequel pro (Mac OS) or HeidiSQL(windows).

