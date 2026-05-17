Parameters:
@p0='?' (DbType = Object), @p1='?', @p2='?' (DbType = Object), @p3='?' (DbType = Object), @p4='?', @p5='?' (DbType = Object), @p6='?' (DbType = Object), @p7='?', @p8='?' (DbType = Object)

INSERT INTO "Issue4783DBRecords" ("NullableStatus", "Source", "Status")
VALUES (@p0, @p1, @p2)
RETURNING "Id";
INSERT INTO "Issue4783DBRecords" ("NullableStatus", "Source", "Status")
VALUES (@p3, @p4, @p5)
RETURNING "Id";
INSERT INTO "Issue4783DBRecords" ("NullableStatus", "Source", "Status")
VALUES (@p6, @p7, @p8)
RETURNING "Id";


-- PostgreSQL.18 PostgreSQL

INSERT INTO "Issue4783DBRecords"
(
	"Source",
	"Status",
	"NullableStatus"
)
VALUES
('linq2db','open'::issue4783db_status,'open'::issue4783db_status),
('linq2db','closed'::issue4783db_status,'closed'::issue4783db_status),
('linq2db','closed'::issue4783db_status,NULL)



-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Source",
	t1."Status",
	t1."NullableStatus"
FROM
	"Issue4783DBRecords" t1
ORDER BY
	t1."Id"



