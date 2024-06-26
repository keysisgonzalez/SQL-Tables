USE [C138_keysis917_gmail]
GO
/****** Object:  StoredProcedure [dbo].[Table1_Insert]    Script Date: 4/29/2024 10:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Table1_Insert]
			@FirstName nvarchar(100)
           ,@LastName nvarchar(100)           
		   ,@Url nvarchar(200)
		   ,@Id int OUTPUT
as

BEGIN

INSERT INTO [dbo].[ImageTable]
           ([Url])

     VALUES
           (@Url)

	SET @Id = SCOPE_IDENTITY();


INSERT INTO [dbo].[Table1]
            ([FirstName]
           ,[LastName]
           ,[ImageId])

     VALUES
           (@FirstName
           ,@LastName 
		   ,@Id)

	 SET @Id = SCOPE_IDENTITY();


END


GO
