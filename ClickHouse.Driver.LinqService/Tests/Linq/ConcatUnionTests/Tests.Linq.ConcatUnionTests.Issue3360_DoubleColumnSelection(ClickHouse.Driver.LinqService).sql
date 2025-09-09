BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Byte,
	t1.Byte_1,
	t1.Guid,
	t1.Guid_1,
	t1.Enum,
	t1.EnumN,
	t1.Bool,
	t1.Bool_1
FROM
	(
		SELECT
			r.Id as Id,
			r.Byte as Byte,
			r.Byte as Byte_1,
			r.Guid as Guid,
			r.Guid as Guid_1,
			toString(NULL) as Enum,
			toString(NULL) as EnumN,
			r.Bool as Bool,
			r.Bool as Bool_1
		FROM
			Issue3360Table1 r
		WHERE
			r.Id = 2
		UNION ALL
		SELECT
			r_1.Id as Id,
			r_1.Byte as Byte,
			r_1.ByteN as Byte_1,
			r_1.Guid as Guid,
			r_1.GuidN as Guid_1,
			r_1.Enum as Enum,
			r_1.EnumN as EnumN,
			r_1.Bool as Bool,
			r_1.BoolN as Bool_1
		FROM
			Issue3360Table1 r_1
		WHERE
			r_1.Id = 4
	) t1
ORDER BY
	t1.Id

