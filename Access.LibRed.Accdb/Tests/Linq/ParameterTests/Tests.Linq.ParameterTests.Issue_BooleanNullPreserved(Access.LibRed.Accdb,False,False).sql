-- Access.LibRed.Accdb Access.LibRed AccessLibRed
INSERT INTO [TestBool]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	True
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
UPDATE
	[TestBool] [t1]
SET
	[t1].[Value] = NOT [t1].[Value]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
UPDATE
	[TestBool] [r]
SET
	[r].[Value] = True
WHERE
	[r].[Id] = 1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

