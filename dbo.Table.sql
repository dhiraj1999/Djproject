CREATE TABLE [dbo].[signup]
(
	[userid] INT NOT NULL PRIMARY KEY, 
    [username] VARCHAR(50) NOT NULL, 
    [password] INT NOT NULL, 
    [dob] DATE NOT NULL, 
    [gender] VARCHAR(50) NOT NULL, 
    [email] VARCHAR(50) NOT NULL
)
