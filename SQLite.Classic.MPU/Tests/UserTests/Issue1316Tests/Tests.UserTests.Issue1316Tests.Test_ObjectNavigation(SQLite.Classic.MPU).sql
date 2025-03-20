BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 5

INSERT INTO [Issue1316Tests]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @obj_Child_Id  -- Int32
SET     @obj_Child_Id = 5

SELECT
	[t1].[ID]
FROM
	[Issue1316Tests] [t1]
WHERE
	[t1].[ID] = @obj_Child_Id
LIMIT 2

