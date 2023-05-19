USE [master]
GO
CREATE LOGIN [user_test] WITH PASSWORD=N'user_test123', DEFAULT_DATABASE=[mis_test], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
use [mis_test];
GO
use [master];
GO
USE [mis_test]
GO
CREATE USER [user_test] FOR LOGIN [user_test]
GO
USE [mis_test]
GO
ALTER ROLE [db_datareader] ADD MEMBER [user_test]
GO
USE [mis_test]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [user_test]
GO
USE [mis_test]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [user_test]
GO
