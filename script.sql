USE [hr]
GO
/****** Object:  Table [dbo].[mvcemployee]    Script Date: 11/10/2021 11:49:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mvcemployee](
	[employeeid] [int] NULL,
	[name] [nchar](50) NULL,
	[age] [int] NULL,
	[state] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[mvcemployee] ([employeeid], [name], [age], [state], [country]) VALUES (15, N'rajender                                          ', 23, N'ghgf', N'ghfg')
INSERT [dbo].[mvcemployee] ([employeeid], [name], [age], [state], [country]) VALUES (13, N'ramesh33                                          ', 0, N'dgdfgdf', N'gdfgf')
INSERT [dbo].[mvcemployee] ([employeeid], [name], [age], [state], [country]) VALUES (343, N'fds                                               ', 22, N'fgdfgf', N'gdfg')
/****** Object:  StoredProcedure [dbo].[DeleteEmployee]    Script Date: 11/10/2021 11:49:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[DeleteEmployee]    
(    
 @Id integer    
)    
as     
Begin    
 Delete Employee where EmployeeID=@Id;    
End
GO
/****** Object:  StoredProcedure [dbo].[InsertUpdateEmployee]    Script Date: 11/10/2021 11:49:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[InsertUpdateEmployee]    
(    
@Id integer,    
@Name nvarchar(50),    
@Age integer,    
@State nvarchar(50),    
@Country nvarchar(50),    
@Action varchar(10)    
)    
As    
Begin    
if @Action='Insert'    
Begin    
 Insert into mvcEmployee(EmployeeID,Name,Age,[State],Country) values(@id,@Name,@Age,@State,@Country);    
End    
if @Action='Update'    
Begin    
 Update mvcEmployee set Name=@Name,Age=@Age,[State]=@State,Country=@Country where EmployeeID=@Id;    
End      
End  
GO
/****** Object:  StoredProcedure [dbo].[selectemployee]    Script Date: 11/10/2021 11:49:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[selectemployee]
as begin
select * from mvcemployee
end
GO
