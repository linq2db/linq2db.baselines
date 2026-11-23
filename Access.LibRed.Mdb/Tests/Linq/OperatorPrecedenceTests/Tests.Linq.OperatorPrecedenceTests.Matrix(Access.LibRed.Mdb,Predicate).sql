-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [r].[A] + [r].[B] = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < [r].[A] + [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] + [r].[B]) BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN ([r].[B] + [r].[C]) AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] + [r].[B] IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN (CASE
			WHEN [r].[S] IS NULL THEN ''
			ELSE [r].[S]
		END + CStr([r].[A] + [r].[B])) LIKE 'x5%'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] + [r].[B] <= [r].[C] AND [r].[B] < [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] + [r].[B] IS DISTINCT FROM [r].[N] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS DISTINCT FROM [r].[A] + [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] - [r].[B] = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < [r].[A] - [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] - [r].[B]) BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN ([r].[B] - [r].[C]) AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] - [r].[B] IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN (CASE
			WHEN [r].[S] IS NULL THEN ''
			ELSE [r].[S]
		END + CStr([r].[A] - [r].[B])) LIKE 'x5%'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] - [r].[B] <= [r].[C] AND [r].[B] < [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] - [r].[B] IS DISTINCT FROM [r].[N] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS DISTINCT FROM [r].[A] - [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] * [r].[B] = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < [r].[A] * [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] * [r].[B]) BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN ([r].[B] * [r].[C]) AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] * [r].[B] IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN (CASE
			WHEN [r].[S] IS NULL THEN ''
			ELSE [r].[S]
		END + CStr([r].[A] * [r].[B])) LIKE 'x5%'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] * [r].[B] <= [r].[C] AND [r].[B] < [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] * [r].[B] IS DISTINCT FROM [r].[N] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS DISTINCT FROM [r].[A] * [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN Fix([r].[A] / [r].[B]) = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < Fix([r].[A] / [r].[B]) THEN 1
		ELSE 0
	END,
	CASE
		WHEN Fix([r].[A] / [r].[B]) BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN Fix([r].[B] / [r].[C]) AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN Fix([r].[A] / [r].[B]) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN (CASE
			WHEN [r].[S] IS NULL THEN ''
			ELSE [r].[S]
		END + CStr(Fix([r].[A] / [r].[B]))) LIKE 'x5%'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Fix([r].[A] / [r].[B]) <= [r].[C] AND [r].[B] < [r].[A]
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Fix([r].[A] / [r].[B]) IS DISTINCT FROM [r].[N] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS DISTINCT FROM Fix([r].[A] / [r].[B]) THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] MOD [r].[B] = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < [r].[A] MOD [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] MOD [r].[B]) BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN ([r].[B] MOD [r].[C]) AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] MOD [r].[B] IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN (CASE
			WHEN [r].[S] IS NULL THEN ''
			ELSE [r].[S]
		END + CStr([r].[A] MOD [r].[B])) LIKE 'x5%'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] MOD [r].[B] <= [r].[C] AND [r].[B] < [r].[A]
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] MOD [r].[B] IS DISTINCT FROM [r].[N] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS DISTINCT FROM [r].[A] MOD [r].[B] THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] BAND [r].[B]) = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < ([r].[A] BAND [r].[B]) THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] BAND [r].[B]) BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN ([r].[B] BAND [r].[C]) AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] BAND [r].[B]) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN (CASE
			WHEN [r].[S] IS NULL THEN ''
			ELSE [r].[S]
		END + CStr([r].[A] BAND [r].[B])) LIKE 'x5%'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] BAND [r].[B]) <= [r].[C] AND [r].[B] < [r].[A]
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] BAND [r].[B]) IS DISTINCT FROM [r].[N] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS DISTINCT FROM ([r].[A] BAND [r].[B]) THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] BOR [r].[B]) = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < ([r].[A] BOR [r].[B]) THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] BOR [r].[B]) BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN ([r].[B] BOR [r].[C]) AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] BOR [r].[B]) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] BOR [r].[N]) IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN (CASE
			WHEN [r].[S] IS NULL THEN ''
			ELSE [r].[S]
		END + CStr([r].[A] BOR [r].[B])) LIKE 'x5%'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] BOR [r].[B]) <= [r].[C] AND [r].[B] < [r].[A]
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] BOR [r].[B]) IS DISTINCT FROM [r].[N] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS DISTINCT FROM ([r].[A] BOR [r].[B]) THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] BXOR [r].[B]) = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] < ([r].[A] BXOR [r].[B]) THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] BXOR [r].[B]) BETWEEN [r].[C] AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[A] BETWEEN ([r].[B] BXOR [r].[C]) AND [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] BXOR [r].[B]) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] BXOR [r].[N]) IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN (CASE
			WHEN [r].[S] IS NULL THEN ''
			ELSE [r].[S]
		END + CStr([r].[A] BXOR [r].[B])) LIKE 'x5%'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] BXOR [r].[B]) <= [r].[C] AND [r].[B] < [r].[A]
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([r].[A] BXOR [r].[B]) IS DISTINCT FROM [r].[N] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[N] IS DISTINCT FROM ([r].[A] BXOR [r].[B]) THEN 1
		ELSE 0
	END,
	CASE
		WHEN -[r].[A] = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] = -[r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN -1 - [r].[A] = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] = -1 - [r].[A] THEN 1
		ELSE 0
	END,
	CASE
		WHEN -5 = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] = -5 THEN 1
		ELSE 0
	END
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN -5 = [r].[C] THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[C] = -5 THEN 1
		ELSE 0
	END
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

