﻿CREATE TABLE [dbo].[UserAudit]
(
	[Id]			INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Created]		DATETIME NOT NULL DEFAULT GETDATE(),
	[Program]		VARCHAR(20) NOT NULL,
	[Facility]		VARCHAR(20) NOT NULL,
	[UserName]		VARCHAR(20) NOT NULL,
	[PageVisited]	VARCHAR(20) NOT NULL,
)
GO
