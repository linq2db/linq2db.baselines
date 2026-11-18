-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM [test_temp]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @skip  -- Int32
SET     @skip = 1

SELECT
	[t1].[ID],
	[t1].[Field1]
FROM
	[test_temp] [t1]
ORDER BY
	[t1].[ID]
OFFSET @skip ROWS FETCH NEXT 2 ROWS ONLY 

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM [test_temp]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @skip  -- Int32
SET     @skip = 1

SELECT
	[t1].[ID],
	[t1].[Field1]
FROM
	[test_temp] [t1]
ORDER BY
	[t1].[ID]
OFFSET @skip ROWS FETCH NEXT 2 ROWS ONLY 

