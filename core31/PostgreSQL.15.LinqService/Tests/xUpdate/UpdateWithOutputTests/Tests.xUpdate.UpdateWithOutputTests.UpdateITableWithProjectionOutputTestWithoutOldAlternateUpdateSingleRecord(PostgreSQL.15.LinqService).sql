BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TableWithData"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TableWithData"
(
	"Id"       Int  NOT NULL,
	"Value"    Int  NOT NULL,
	"ValueStr" text     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "DestinationTable"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "DestinationTable"
(
	"Id"       Int  NOT NULL,
	"Value"    Int  NOT NULL,
	"ValueStr" text     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 0
DECLARE @ValueStr Text(4) -- String
SET     @ValueStr = '0Dst'

INSERT INTO "DestinationTable"
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
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -1
DECLARE @ValueStr Text(5) -- String
SET     @ValueStr = '-1Dst'

INSERT INTO "DestinationTable"
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
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -2
DECLARE @ValueStr Text(5) -- String
SET     @ValueStr = '-2Dst'

INSERT INTO "DestinationTable"
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
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -3
DECLARE @ValueStr Text(5) -- String
SET     @ValueStr = '-3Dst'

INSERT INTO "DestinationTable"
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
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -4
DECLARE @ValueStr Text(5) -- String
SET     @ValueStr = '-4Dst'

INSERT INTO "DestinationTable"
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
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -5
DECLARE @ValueStr Text(5) -- String
SET     @ValueStr = '-5Dst'

INSERT INTO "DestinationTable"
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
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -6
DECLARE @ValueStr Text(5) -- String
SET     @ValueStr = '-6Dst'

INSERT INTO "DestinationTable"
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
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 8
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -7
DECLARE @ValueStr Text(5) -- String
SET     @ValueStr = '-7Dst'

INSERT INTO "DestinationTable"
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
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 9
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -8
DECLARE @ValueStr Text(5) -- String
SET     @ValueStr = '-8Dst'

INSERT INTO "DestinationTable"
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
-- PostgreSQL.15 PostgreSQL

UPDATE
	"DestinationTable"
SET
	"Id" = t1."Id",
	"Value" = t1."Value",
	"ValueStr" = t1."ValueStr"
FROM
	"TableWithData" t1
WHERE
	t1."Id" = 3 AND "DestinationTable"."Id" = t1."Id"
RETURNING
	"DestinationTable"."Value"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "DestinationTable"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TableWithData"

