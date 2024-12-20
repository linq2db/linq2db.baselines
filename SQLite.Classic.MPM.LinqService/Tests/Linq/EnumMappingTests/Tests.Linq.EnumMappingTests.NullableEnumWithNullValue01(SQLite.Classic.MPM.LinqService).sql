BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 104

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @p

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 101
DECLARE @Value  -- Int32
SET     @Value = 11

INSERT INTO [LinqDataTypes]
(
	[ID],
	[IntValue]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 102
DECLARE @Value  -- Int32
SET     @Value = 22

INSERT INTO [LinqDataTypes]
(
	[ID],
	[IntValue]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 103
DECLARE @Value  -- Int32
SET     @Value = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[IntValue]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[r].[ID],
	[r].[IntValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] <= 103
ORDER BY
	[r].[ID]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[r].[ID],
	[r].[IntValue],
	[r].[StringValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] <= 103
ORDER BY
	[r].[ID]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 104

DELETE FROM
	[LinqDataTypes]
WHERE
	[LinqDataTypes].[ID] >= 101 AND [LinqDataTypes].[ID] < @p

