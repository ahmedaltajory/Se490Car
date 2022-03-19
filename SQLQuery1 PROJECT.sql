/*Carr*/
Declare @mystring varchar(250);
set @mystring = 'convert transact sql UPPER function'
select UPPER (@mystring)
GO
Alter proc P_Insert_Car(@name  nvarchar(50))
as
if not Exists (Select *from Car Where Name = @name)
Begin
INSERT INTO [dbo].[Car](Name) 
VALUES(@name )
End

exec P_Insert_Car "BMW12"

Select *  from  [dbo].[Car]
create view viewCar 
as
select * from [dbo].[Car]
select * view viewCar

create  proc P_UPDATE_Car(@name  nvarchar(50), @name1 int)
as
UPDATE [dbo].[Car]
SET Name=('BMW')
WHERE Id=1
 
 exec P_UPDATE_Car 'BMW',1

Alter proc P_Delete_Car (@name int)
as
Delete [dbo].[Car]
  WHERE Id = @name;

  exec P_Delete_Car '15'

  /*------------------------*/
  /*------Catogry-----------*/
  Declare @mystring nvarchar(250);
  set @mystring = 'convert transact sql UPPER function'

  select UPPER (@mystring)
  GO
 create proc P_Insert_Catogory (@name1 nvarchar(50) , @name2 int)
  as
  if Not Exists ( select * from Catogory where Code = @name1 and CarID= @name2)
  Begin
  INSERT INTO [dbo].[Catogory] (Code , CarID)
  VALUES (@name1 , @name2);
End

exec P_Insert_Catogory 'E46',1

  Select * from  Catogory
  Select * from viewCatogry;

  create proc P_UPDATE_Catogory (@name nvarchar(50), @name1 nvarchar(50)  )
 as
 UPDATE [dbo].[Catogory] 
 SET Code = @name 
 WHERE Code=@name1;
exec P_UPDATE_Catogory 'E30', 1

Alter proc P_Delete_Catogory (@name nvarchar(50))
as
Delete [dbo].[Catogory] 
WHERE Code =@name

exec P_Delete_Catogory

  /*-------------------------------------------*/
  /*-------------*Catogory_SparPart-------------*/
  Declare @mystring nvarchar(250);
  set @mystring = 'convert transact sql UPPER function'
  select UPPER =(@mystring)
  GO
  create proc P_Insert_CatSpar (@name3 nvarchar(50) , @name4 int)
  as
  if not exists ( select * from Catogry_SparPart where CatogryCode = @name3 and SparPartId =@name4 )
  Begin
 INSERT INTO [dbo].[Catogry_SparPart]  (CatogryCode , SparPartId)
  VALUES (@name3 , @name4)
  end;

  exec P_Insert_CatSpar 'E38', 1

  select * from Catogry_SparPart

 Alter view Catogory_SparPart 
 as 
  UPDATE [dbo].[Catogry_SparPart]
  SET CatogryCode = 'E30'
  WHERE Id = 1 

  Delete [dbo].[Catogory_SparPart]
  WHERE Id = 12 

  /*------------------------*/
  /*-----------SparPart-------------*/
    Declare @mystring nvarchar(250);
  set @mystring = 'convert transact sql UPPER function'
  select UPPER =(@mystring)
  create proc P_Insert_SparPart (@Code1 nvarchar(50) , @Code2 nvarchar(50) , @name5 nvarchar(50), @p float , @Is int )
  as
  if Not exists (select * from SparPart where Code=@Code1 and Country=@Code2 and Name = @name5 and Price =@p and IsExisting=@Is )
  Begin
  Insert into [dbo].[SparPart] (Code , Country , Name , Price , IsExisting)
  VALUES (@Code1 ,@Code2 ,@name5 ,@p , @Is )
  end

  exec P_Insert_SparPart  "a" ,"USA" , N'›—‘Ì·…'  , "190" , "0"

  select * from [dbo].[SparPart] 

  select*from viewSpaPart;

  Alter proc P_UPDATE_SparPart (@name nvarchar(50) , @name1 nvarchar(50) , @name2 nvarchar(50) , @name3 float , @name4 int , @name5 int)
 as
  UPDATE [dbo].[SparPart] 
  SET Code= @name , Country=@name1 , Name=N'@name2' , Price=@name3 , IsExisting= @name4
  Where Id =@name5

  exec P_UPDATE_SparPart C121,Korian, 'ﬂÊ‘‰Ì Ì' ,180,1

   create proc P_DeleteE_SparPart(@name int) 
   as
  Delete [dbo].[SparPart]
   Where Id= @name6

   exec P_DeleteE_SparPart 12