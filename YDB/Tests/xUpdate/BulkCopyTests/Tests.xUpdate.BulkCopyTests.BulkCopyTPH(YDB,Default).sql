INSERT ASYNC BULK TPHTable(Id, Discriminator, Value1, Value2, Value3, NullableBool)

-- YDB Ydb

SELECT
	t1.Discriminator as Discriminator,
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.Value3 as Value3,
	t1.NullableBool as NullableBool
FROM
	TPHTable t1
ORDER BY
	t1.Id

-- YDB Ydb

SELECT
	x.Discriminator as Discriminator,
	x.Id as Id,
	x.Value1 as Value1,
	x.Value2 as Value2,
	x.Value3 as Value3,
	x.NullableBool as NullableBool
FROM
	TPHTable x
WHERE
	x.Discriminator = 1
LIMIT 2

-- YDB Ydb

SELECT
	x.Discriminator as Discriminator,
	x.Id as Id,
	x.Value1 as Value1,
	x.Value2 as Value2,
	x.Value3 as Value3,
	x.NullableBool as NullableBool
FROM
	TPHTable x
WHERE
	x.Discriminator = 2
LIMIT 2

-- YDB Ydb

SELECT
	x.Discriminator as Discriminator,
	x.Id as Id,
	x.Value1 as Value1,
	x.Value2 as Value2,
	x.Value3 as Value3,
	x.NullableBool as NullableBool
FROM
	TPHTable x
WHERE
	x.Discriminator = 3
LIMIT 2

-- YDB Ydb

SELECT
	x.Discriminator as Discriminator,
	x.Id as Id,
	x.Value1 as Value1,
	x.Value2 as Value2,
	x.Value3 as Value3,
	x.NullableBool as NullableBool
FROM
	TPHTable x
WHERE
	x.Value1 = 'Str1'u
LIMIT 2

-- YDB Ydb

SELECT
	x.Discriminator as Discriminator,
	x.Id as Id,
	x.Value1 as Value1,
	x.Value2 as Value2,
	x.Value3 as Value3,
	x.NullableBool as NullableBool
FROM
	TPHTable x
WHERE
	x.Value2 = 'Str2'u
LIMIT 2

-- YDB Ydb

SELECT
	x.Discriminator as Discriminator,
	x.Id as Id,
	x.Value1 as Value1,
	x.Value2 as Value2,
	x.Value3 as Value3,
	x.NullableBool as NullableBool
FROM
	TPHTable x
WHERE
	x.Value3 = 'Str3'u
LIMIT 2

