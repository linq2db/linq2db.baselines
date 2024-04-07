﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "SampleClass"
(
	"Id"     Int         NOT NULL,
	"Value1" text            NULL,
	"Value2" text            NULL,
	"Value3" VarChar(50)     NULL,
	"Value4" VarChar(50)     NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value1 Text(2) -- String
SET     @Value1 = 'V1'
DECLARE @Value2 Text(2) -- String
SET     @Value2 = 'V2'
DECLARE @Value3 Varchar -- String
SET     @Value3 = NULL
DECLARE @Value4 Varchar(2) -- String
SET     @Value4 = 'V4'

INSERT INTO "SampleClass"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value3,
	:Value4
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value1 Text -- String
SET     @Value1 = NULL
DECLARE @Value2 Text(2) -- String
SET     @Value2 = 'Z2'
DECLARE @Value3 Varchar -- String
SET     @Value3 = NULL
DECLARE @Value4 Varchar -- String
SET     @Value4 = NULL

INSERT INTO "SampleClass"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value3,
	:Value4
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value1 Text(2) -- String
SET     @Value1 = 'Z1'
DECLARE @Value2 Text -- String
SET     @Value2 = NULL
DECLARE @Value3 Varchar -- String
SET     @Value3 = NULL
DECLARE @Value4 Varchar(2) -- String
SET     @Value4 = 'Z4'

INSERT INTO "SampleClass"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value3,
	:Value4
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	STRING_AGG(t1."Value1", ' -> ' ORDER BY t1."Value3" DESC, t1."Value1")
FROM
	"SampleClass" t1
GROUP BY
	t1."Id",
	t1."Value1"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SampleClass"

