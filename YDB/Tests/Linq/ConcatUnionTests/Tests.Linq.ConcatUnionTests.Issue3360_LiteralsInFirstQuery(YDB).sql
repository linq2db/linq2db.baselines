-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Byte as Byte,
	t1.Byte_1 as Byte_1,
	t1.Guid as Guid,
	t1.GuidN as GuidN,
	t1.`Enum` as `Enum`,
	t1.EnumN as EnumN,
	t1.Bool as Bool,
	t1.BoolN as BoolN
FROM
	(
		SELECT
			r.Id as Id,
			Unwrap(CAST(5ut AS Uint8)) as Byte,
			Unwrap(CAST(5ut AS Uint8)) as Byte_1,
			Unwrap(CAST(Uuid('0b8afe27-481c-442e-b8cf-729ddfeece29') AS Uuid)) as Guid,
			Unwrap(CAST(Uuid('0b8afe27-481c-442e-b8cf-729ddfeece30') AS Uuid)) as GuidN,
			Unwrap(CAST('ENUM1_VALUE'u AS Text)) as `Enum`,
			Unwrap(CAST('ENUM2_VALUE'u AS Text)) as EnumN,
			Unwrap(CAST(true AS Bool)) as Bool,
			Unwrap(CAST(false AS Bool)) as BoolN
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
			r_1.GuidN as GuidN,
			r_1.`Enum` as `Enum`,
			r_1.EnumN as EnumN,
			r_1.Bool as Bool,
			r_1.BoolN as BoolN
		FROM
			Issue3360Table1 r_1
		WHERE
			r_1.Id = 4
	) t1
ORDER BY
	t1.Id

