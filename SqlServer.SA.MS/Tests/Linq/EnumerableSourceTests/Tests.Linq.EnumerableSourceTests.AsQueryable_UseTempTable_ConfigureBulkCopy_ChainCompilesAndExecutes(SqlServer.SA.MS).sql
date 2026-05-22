-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_11f83f3c2af8]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [tempdb]..[#T_11f83f3c2af8]
(
	[Id],
	[Data]
)
VALUES
(0,N'Data 0'),
(1,N'Data 1'),
(2,N'Data 2'),
(3,N'Data 3'),
(4,N'Data 4'),
(5,N'Data 5'),
(6,N'Data 6'),
(7,N'Data 7'),
(8,N'Data 8'),
(9,N'Data 9')

-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [tempdb]..[#T_11f83f3c2af8]
(
	[Id],
	[Data]
)
VALUES
(10,N'Data 10'),
(11,N'Data 11'),
(12,N'Data 12'),
(13,N'Data 13'),
(14,N'Data 14'),
(15,N'Data 15'),
(16,N'Data 16'),
(17,N'Data 17'),
(18,N'Data 18'),
(19,N'Data 19')

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_11f83f3c2af8] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_11f83f3c2af8]

