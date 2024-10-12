BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TableWithData"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TableWithData"
(
	"Id"       Int  NOT NULL,
	"Value"    Int  NOT NULL,
	"ValueStr" text     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Integer -- Int32
SET     @Value = -1
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
	:Value,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value Integer -- Int32
SET     @Value = -2
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
	:Value,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value Integer -- Int32
SET     @Value = -3
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
	:Value,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Value Integer -- Int32
SET     @Value = -4
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
	:Value,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Value Integer -- Int32
SET     @Value = -5
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
	:Value,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Value Integer -- Int32
SET     @Value = -6
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
	:Value,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @Value Integer -- Int32
SET     @Value = -7
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
	:Value,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 8
DECLARE @Value Integer -- Int32
SET     @Value = -8
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
	:Value,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 9
DECLARE @Value Integer -- Int32
SET     @Value = -9
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
	:Value,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "DestinationTable"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "DestinationTable"
(
	"Id"       Int  NOT NULL,
	"Value"    Int  NOT NULL,
	"ValueStr" text     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Integer -- Int32
SET     @Value = 0
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
	:Value,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value Integer -- Int32
SET     @Value = -1
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
	:Value,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value Integer -- Int32
SET     @Value = -2
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
	:Value,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Value Integer -- Int32
SET     @Value = -3
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
	:Value,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Value Integer -- Int32
SET     @Value = -4
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
	:Value,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Value Integer -- Int32
SET     @Value = -5
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
	:Value,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @Value Integer -- Int32
SET     @Value = -6
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
	:Value,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 8
DECLARE @Value Integer -- Int32
SET     @Value = -7
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
	:Value,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 9
DECLARE @Value Integer -- Int32
SET     @Value = -8
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
	:Value,
	:ValueStr
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "DestinationTable"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TableWithData"

