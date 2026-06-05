-- SqlCe

SELECT
	[c_1].[Id],
	[c_1].[Name],
	[c_1].[Id] as [f01],
	[c_1].[Id] * 2 as [f02],
	[c_1].[Id] * 3 as [f03],
	[c_1].[Id] * 4 as [f04],
	[c_1].[Id] * 5 as [f05],
	[c_1].[Id] * 6 as [f06],
	[c_1].[Id] * 7 as [f07],
	[c_1].[Id] * 8 as [f08],
	[c_1].[Id] * 9 as [f09],
	[c_1].[Id] * 10 as [f10],
	[c_1].[Id] * 11 as [f11],
	[c_1].[Id] * 12 as [f12],
	[c_1].[Id] * 13 as [f13],
	[c_1].[Id] * 14 as [f14],
	[c_1].[Id] * 15 as [f15],
	[c_1].[Id] * 16 as [f16],
	[c_1].[Id] * 17 as [f17],
	[c_1].[Id] * 18 as [f18],
	[c_1].[Id] * 19 as [f19],
	[c_1].[Id] * 20 as [f20],
	[c_1].[Id] * 21 as [f21],
	[c_1].[Id] * 22 as [f22],
	[c_1].[Id] * 23 as [f23],
	[c_1].[Id] * 24 as [f24],
	[c_1].[Id] * 25 as [f25],
	[c_1].[Id] * 26 as [f26],
	[c_1].[Id] * 27 as [f27],
	[c_1].[Id] * 28 as [f28],
	[c_1].[Id] * 29 as [f29],
	[c_1].[Id] * 30 as [f30],
	[c_1].[Id] * 31 as [f31],
	[c_1].[Id] * 32 as [f32],
	[c_1].[Id] * 33 as [f33],
	[c_1].[Id] * 34 as [f34],
	[c_1].[Id] * 35 as [f35],
	[c_1].[Id] * 36 as [f36],
	[c_1].[Id] * 37 as [f37],
	[c_1].[Id] * 38 as [f38],
	[c_1].[Id] * 39 as [f39],
	[c_1].[Id] * 40 as [f40],
	[c_1].[Id] * 41 as [f41],
	[c_1].[Id] * 42 as [f42],
	[c_1].[Id] * 43 as [f43],
	[c_1].[Id] * 44 as [f44],
	[c_1].[Id] * 45 as [f45],
	[c_1].[Id] * 46 as [f46],
	[c_1].[Id] * 47 as [f47],
	[c_1].[Id] * 48 as [f48],
	[c_1].[Id] * 49 as [f49],
	[c_1].[Id] * 50 as [f50],
	[c_1].[Id] * 51 as [f51],
	[c_1].[Id] * 52 as [f52],
	[c_1].[Id] * 53 as [f53],
	[c_1].[Id] * 54 as [f54],
	[c_1].[Id] * 55 as [f55],
	[c_1].[Id] * 56 as [f56],
	[c_1].[Id] * 57 as [f57],
	[c_1].[Id] * 58 as [f58],
	[c_1].[Id] * 59 as [f59],
	[c_1].[Id] * 60 as [f60]
FROM
	[Company] [c_1]
ORDER BY
	[c_1].[Id]

-- SqlCe

SELECT
	[k_1].[item] as [item_1],
	[d].[Id],
	[d].[CompanyId],
	[d].[Name],
	[d].[IsActive]
FROM
	(
		SELECT 1 AS [item]
		UNION ALL
		SELECT 2 AS [item]
		UNION ALL
		SELECT 3 AS [item]) [k_1]
		INNER JOIN [Department] [d] ON [d].[CompanyId] = [k_1].[item]
ORDER BY
	[d].[Id]

