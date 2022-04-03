BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TableWithData"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "TableWithData"
(
	"Id"       Int  NOT NULL,
	"Value"    Int  NOT NULL,
	"ValueStr" text     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -1
DECLARE @ValueStr Text(4) -- String
SET     @ValueStr = 'Str1'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	:Id,
	:Value_1,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -2
DECLARE @ValueStr Text(4) -- String
SET     @ValueStr = 'Str2'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	:Id,
	:Value_1,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -3
DECLARE @ValueStr Text(4) -- String
SET     @ValueStr = 'Str3'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	:Id,
	:Value_1,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -4
DECLARE @ValueStr Text(4) -- String
SET     @ValueStr = 'Str4'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	:Id,
	:Value_1,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -5
DECLARE @ValueStr Text(4) -- String
SET     @ValueStr = 'Str5'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	:Id,
	:Value_1,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -6
DECLARE @ValueStr Text(4) -- String
SET     @ValueStr = 'Str6'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	:Id,
	:Value_1,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -7
DECLARE @ValueStr Text(4) -- String
SET     @ValueStr = 'Str7'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	:Id,
	:Value_1,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 8
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -8
DECLARE @ValueStr Text(4) -- String
SET     @ValueStr = 'Str8'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	:Id,
	:Value_1,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 9
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -9
DECLARE @ValueStr Text(4) -- String
SET     @ValueStr = 'Str9'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	:Id,
	:Value_1,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -10
DECLARE @ValueStr Text(5) -- String
SET     @ValueStr = 'Str10'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	:Id,
	:Value_1,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	s."Id",
	s."Value",
	s."ValueStr"
FROM
	"TableWithData" s
WHERE
	s."Id" > 3

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TableWithData" s
WHERE
	s."Id" > 3
RETURNING
	s."Id",
	s."Value",
	s."ValueStr"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TableWithData"

