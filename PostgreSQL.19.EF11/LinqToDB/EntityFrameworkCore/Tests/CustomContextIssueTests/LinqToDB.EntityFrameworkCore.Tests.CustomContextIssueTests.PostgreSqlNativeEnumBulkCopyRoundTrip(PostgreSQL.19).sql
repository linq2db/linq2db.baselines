Parameters:
@p0='?' (DbType = Object), @p1='?', @p2='?' (DbType = Object), @p3='?' (DbType = Object), @p4='?', @p5='?' (DbType = Object), @p6='?' (DbType = Object), @p7='?', @p8='?' (DbType = Object)

INSERT INTO "NativeEnumRecords" ("NullableStatus", "Source", "Status")
VALUES (@p0, @p1, @p2)
RETURNING "Id";
INSERT INTO "NativeEnumRecords" ("NullableStatus", "Source", "Status")
VALUES (@p3, @p4, @p5)
RETURNING "Id";
INSERT INTO "NativeEnumRecords" ("NullableStatus", "Source", "Status")
VALUES (@p6, @p7, @p8)
RETURNING "Id";


-- PostgreSQL.19 PostgreSQL12
INSERT INTO "NativeEnumRecords"
(
	"Source",
	"Status",
	"NullableStatus"
)
VALUES
('linq2db','open'::native_enum_status,'open'::native_enum_status),
('linq2db','closed'::native_enum_status,'closed'::native_enum_status),
('linq2db','closed'::native_enum_status,NULL)



-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id",
	t1."Source",
	t1."Status",
	t1."NullableStatus"
FROM
	"NativeEnumRecords" t1
ORDER BY
	t1."Id"



