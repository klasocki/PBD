USE [ilczuk_a]
GO
/****** Object:  StoredProcedure [dbo].[ChangeWorkshopPlaceLimit]    Script Date: 15.12.2018 22:24:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[ChangeWorkshopPlaceLimit]
	-- Add the parameters for the stored procedure here
	@ID int,
	@PlaceLimit int
AS
BEGIN
	IF NOT EXISTS
	(
		SELECT * FROM Workshops
		WHERE ID = @ID
	)
	BEGIN
		;THROW 52000,'Workshop does not exist',1
	END
	UPDATE Workshops
		SET PlaceLimit = @PlaceLimit
		WHERE ID = @ID

END
