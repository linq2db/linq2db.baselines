-- ClickHouse.Driver ClickHouse
WITH RECURSIVE cte AS
(
	SELECT
		r.Id as Id,
		r.Byte as Byte,
		r.Byte as ByteN,
		r.Guid as Guid,
		r.Guid as GuidN,
		toString(NULL) as Enum,
		toString(NULL) as EnumN,
		r.Bool as Bool,
		r.Bool as BoolN
	FROM
		Issue3360Table1 r
	WHERE
		r.Id = 2
	UNION ALL
	SELECT
		r_1.Id as Id,
		r_1.Byte as Byte,
		r_1.ByteN as ByteN,
		r_1.Guid as Guid,
		r_1.GuidN as GuidN,
		r_1.Enum as Enum,
		r_1.EnumN as EnumN,
		r_1.Bool as Bool,
		r_1.BoolN as BoolN
	FROM
		Issue3360Table1 r_1
			INNER JOIN cte parent ON r_1.Id = parent.Id + 2
)
SELECT
	t1.Id,
	t1.Byte,
	t1.ByteN,
	t1.Guid,
	t1.GuidN,
	t1.Enum,
	t1.EnumN,
	t1.Bool,
	t1.BoolN
FROM
	cte t1
ORDER BY
	t1.Id

