BeforeExecute
-- SQLite.Classic SQLite
DECLARE @item_Id  -- Int32
SET     @item_Id = 1
DECLARE @item_Value  -- Int32
SET     @item_Value = 11
DECLARE @item_Id_1  -- Int32
SET     @item_Id_1 = 2
DECLARE @item_Value_1  -- Int32
SET     @item_Value_1 = 22
DECLARE @item_Id_2  -- Int32
SET     @item_Id_2 = 3
DECLARE @item_Value_2  -- Int32
SET     @item_Value_2 = 33
DECLARE @item_Id_3  -- Int32
SET     @item_Id_3 = 4
DECLARE @item_Value_3  -- Int32
SET     @item_Value_3 = 44

WITH [CTE_1] ([Id], [Value_1])
AS
(
	SELECT
		@item_Id,
		@item_Value
	UNION ALL
	SELECT
		@item_Id_1,
		@item_Value_1
	UNION ALL
	SELECT
		@item_Id_2,
		@item_Value_2
	UNION ALL
	SELECT
		@item_Id_3,
		@item_Value_3
)
SELECT
	[t1].[Id],
	[t1].[Value_1]
FROM
	[CTE_1] [t1]

