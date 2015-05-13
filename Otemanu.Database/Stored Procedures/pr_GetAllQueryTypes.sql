CREATE PROCEDURE [dbo].[pr_GetAllQueryTypes]
AS
BEGIN

	SELECT DISTINCT
		[Type]		
	FROM QueryType

END
GO