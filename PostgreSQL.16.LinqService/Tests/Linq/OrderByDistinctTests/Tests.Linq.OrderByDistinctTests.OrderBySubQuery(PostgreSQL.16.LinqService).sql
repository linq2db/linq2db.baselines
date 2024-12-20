﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "OrderByDistinctData"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "OrderByDistinctData"
(
	"Id"            Int  NOT NULL,
	"DuplicateData" text     NULL,
	"OrderData1"    Int  NOT NULL,
	"OrderData2"    Int  NOT NULL,

	CONSTRAINT "PK_OrderByDistinctData" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @DuplicateData Text(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer -- Int32
SET     @OrderData2 = 1

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:Id,
	:DuplicateData,
	:OrderData1,
	:OrderData2
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @DuplicateData Text(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer -- Int32
SET     @OrderData2 = 10

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:Id,
	:DuplicateData,
	:OrderData1,
	:OrderData2
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @DuplicateData Text(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2 Integer -- Int32
SET     @OrderData2 = 2

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:Id,
	:DuplicateData,
	:OrderData1,
	:OrderData2
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @DuplicateData Text(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2 Integer -- Int32
SET     @OrderData2 = 3

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:Id,
	:DuplicateData,
	:OrderData1,
	:OrderData2
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @DuplicateData Text(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2 Integer -- Int32
SET     @OrderData2 = 4

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:Id,
	:DuplicateData,
	:OrderData1,
	:OrderData2
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @DuplicateData Text(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2 Integer -- Int32
SET     @OrderData2 = 5

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:Id,
	:DuplicateData,
	:OrderData1,
	:OrderData2
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @DuplicateData Text(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer -- Int32
SET     @OrderData2 = 1

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:Id,
	:DuplicateData,
	:OrderData1,
	:OrderData2
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 20
DECLARE @DuplicateData Text(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer -- Int32
SET     @OrderData2 = 10

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:Id,
	:DuplicateData,
	:OrderData1,
	:OrderData2
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 30
DECLARE @DuplicateData Text(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2 Integer -- Int32
SET     @OrderData2 = 2

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:Id,
	:DuplicateData,
	:OrderData1,
	:OrderData2
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 40
DECLARE @DuplicateData Text(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2 Integer -- Int32
SET     @OrderData2 = 3

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:Id,
	:DuplicateData,
	:OrderData1,
	:OrderData2
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 50
DECLARE @DuplicateData Text(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2 Integer -- Int32
SET     @OrderData2 = 4

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:Id,
	:DuplicateData,
	:OrderData1,
	:OrderData2
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 60
DECLARE @DuplicateData Text(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2 Integer -- Int32
SET     @OrderData2 = 5

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:Id,
	:DuplicateData,
	:OrderData1,
	:OrderData2
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 100
DECLARE @DuplicateData Text(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer -- Int32
SET     @OrderData2 = 1

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:Id,
	:DuplicateData,
	:OrderData1,
	:OrderData2
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 200
DECLARE @DuplicateData Text(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer -- Int32
SET     @OrderData2 = 10

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:Id,
	:DuplicateData,
	:OrderData1,
	:OrderData2
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 300
DECLARE @DuplicateData Text(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2 Integer -- Int32
SET     @OrderData2 = 2

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:Id,
	:DuplicateData,
	:OrderData1,
	:OrderData2
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 400
DECLARE @DuplicateData Text(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2 Integer -- Int32
SET     @OrderData2 = 3

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:Id,
	:DuplicateData,
	:OrderData1,
	:OrderData2
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 500
DECLARE @DuplicateData Text(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2 Integer -- Int32
SET     @OrderData2 = 4

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:Id,
	:DuplicateData,
	:OrderData1,
	:OrderData2
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 600
DECLARE @DuplicateData Text(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2 Integer -- Int32
SET     @OrderData2 = 5

INSERT INTO "OrderByDistinctData"
(
	"Id",
	"DuplicateData",
	"OrderData1",
	"OrderData2"
)
VALUES
(
	:Id,
	:DuplicateData,
	:OrderData1,
	:OrderData2
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t_1."DuplicateData",
	(
		SELECT
			COUNT(*)
		FROM
			"OrderByDistinctData" c_1
		WHERE
			c_1."DuplicateData" = t_1."DuplicateData" OR c_1."DuplicateData" IS NULL AND t_1."DuplicateData" IS NULL
	)
FROM
	(
		SELECT
			t."Id",
			t."DuplicateData"
		FROM
			"OrderByDistinctData" t
		LIMIT :take
	) t_1
ORDER BY
	t_1."Id" DESC

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "OrderByDistinctData"

