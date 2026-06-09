-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Value` as Value_1,
	'M'u || Unwrap(CAST(t1.Id AS Text)) as EntityMaterialized
FROM
	InstanceClass t1

