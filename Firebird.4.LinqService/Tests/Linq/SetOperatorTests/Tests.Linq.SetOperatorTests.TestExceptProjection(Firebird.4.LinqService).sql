﻿BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleData"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleData')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "SampleData"
			(
				"Id"     Int NOT NULL,
				"Value1" Int NOT NULL,
				"Value2" Int NOT NULL,
				"Value3" Int NOT NULL,

				CONSTRAINT "PK_SampleData" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 10
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 100
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 1000

INSERT INTO "SampleData"
(
	"Id",
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value1 AS Int),
	CAST(@Value2 AS Int),
	CAST(@Value3 AS Int)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 20
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 200
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 2000

INSERT INTO "SampleData"
(
	"Id",
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value1 AS Int),
	CAST(@Value2 AS Int),
	CAST(@Value3 AS Int)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 30
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 300
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 3000

INSERT INTO "SampleData"
(
	"Id",
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value1 AS Int),
	CAST(@Value2 AS Int),
	CAST(@Value3 AS Int)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 40
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 400
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 4000

INSERT INTO "SampleData"
(
	"Id",
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value1 AS Int),
	CAST(@Value2 AS Int),
	CAST(@Value3 AS Int)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 50
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 500
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 5000

INSERT INTO "SampleData"
(
	"Id",
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value1 AS Int),
	CAST(@Value2 AS Int),
	CAST(@Value3 AS Int)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 60
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 600
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 6000

INSERT INTO "SampleData"
(
	"Id",
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value1 AS Int),
	CAST(@Value2 AS Int),
	CAST(@Value3 AS Int)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 70
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 700
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 7000

INSERT INTO "SampleData"
(
	"Id",
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value1 AS Int),
	CAST(@Value2 AS Int),
	CAST(@Value3 AS Int)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 8
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 80
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 800
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 8000

INSERT INTO "SampleData"
(
	"Id",
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value1 AS Int),
	CAST(@Value2 AS Int),
	CAST(@Value3 AS Int)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 9
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 90
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 900
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 9000

INSERT INTO "SampleData"
(
	"Id",
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value1 AS Int),
	CAST(@Value2 AS Int),
	CAST(@Value3 AS Int)
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 100
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1000
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 10000

INSERT INTO "SampleData"
(
	"Id",
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value1 AS Int),
	CAST(@Value2 AS Int),
	CAST(@Value3 AS Int)
)

BeforeExecute
-- Firebird.4 Firebird4

SELECT DISTINCT
	"r"."Value1"
FROM
	"SampleData" "r"
WHERE
	Mod("r"."Id", 2) = 0 AND NOT EXISTS(
		SELECT
			*
		FROM
			"SampleData" "r_1"
		WHERE
			Mod("r_1"."Id", 4) = 0 AND "r"."Id" = "r_1"."Id" AND
			"r"."Value1" = "r_1"."Value2" / 10
	) AND
	NOT EXISTS(
		SELECT
			*
		FROM
			"SampleData" "r_2"
		WHERE
			Mod("r_2"."Id", 6) = 0 AND "r"."Id" = "r_2"."Id" AND
			"r"."Value1" = "r_2"."Value1"
	)

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleData"';
END

