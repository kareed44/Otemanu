CREATE PROCEDURE [dbo].[pr_SaveQuery]
	@Name			VARCHAR(50),
	@Description	VARCHAR(60), 
	@Type			VARCHAR(20),
	@Label			VARCHAR(120)
AS
BEGIN
	
	IF NOT EXISTS(SELECT * FROM Query WHERE Name = @Name)
	BEGIN
		INSERT INTO Query
		(
			Name,
			Description,
			Type,
			Label,
			Active
		)
		SELECT
			@Name,
			@Description,
			@Type,
			@Label,
			1

		SELECT 1 AS 'Result' --Inserted
	END
	ELSE
	BEGIN
		UPDATE Query
		SET Description = @Description,
			Type = @Type,
			Label = @Label
		WHERE Name = @Name

		SELECT 2 AS 'Result' --Updated
	END
END
GO