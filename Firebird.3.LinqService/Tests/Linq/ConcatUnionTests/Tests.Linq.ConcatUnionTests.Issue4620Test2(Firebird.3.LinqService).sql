BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4620Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4620Table"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4620Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4620Table"
			(
				"Id"         Int             NOT NULL,
				"IdContract" Int,
				"IdClient"   Int,
				"Sum"        Decimal(18, 10) NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @IdContract Integer -- Int32
SET     @IdContract = NULL
DECLARE @IdClient Integer -- Int32
SET     @IdClient = 1
DECLARE @Sum Decimal(1, 0)
SET     @Sum = 0

INSERT INTO "Issue4620Table"
(
	"Id",
	"IdContract",
	"IdClient",
	"Sum"
)
VALUES
(
	@Id,
	@IdContract,
	@IdClient,
	@Sum
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @IdContract Integer -- Int32
SET     @IdContract = 2
DECLARE @IdClient Integer -- Int32
SET     @IdClient = NULL
DECLARE @Sum Decimal(1, 0)
SET     @Sum = 0

INSERT INTO "Issue4620Table"
(
	"Id",
	"IdContract",
	"IdClient",
	"Sum"
)
VALUES
(
	@Id,
	@IdContract,
	@IdClient,
	@Sum
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @IdContract Integer -- Int32
SET     @IdContract = NULL
DECLARE @IdClient Integer -- Int32
SET     @IdClient = NULL
DECLARE @Sum Decimal(1, 0)
SET     @Sum = 0

INSERT INTO "Issue4620Table"
(
	"Id",
	"IdContract",
	"IdClient",
	"Sum"
)
VALUES
(
	@Id,
	@IdContract,
	@IdClient,
	@Sum
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @IdContract Integer -- Int32
SET     @IdContract = 2
DECLARE @IdClient Integer -- Int32
SET     @IdClient = 1
DECLARE @Sum Decimal(1, 0)
SET     @Sum = 0

INSERT INTO "Issue4620Table"
(
	"Id",
	"IdContract",
	"IdClient",
	"Sum"
)
VALUES
(
	@Id,
	@IdContract,
	@IdClient,
	@Sum
)

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4620Client')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4620Client"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4620Client')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4620Client"
			(
				"Id"   Int                                    NOT NULL,
				"Name" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Client 1'

INSERT INTO "Issue4620Client"
(
	"Id",
	"Name"
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Client 2'

INSERT INTO "Issue4620Client"
(
	"Id",
	"Name"
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4620Contract')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4620Contract"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4620Contract')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4620Contract"
			(
				"Id"       Int NOT NULL,
				"IdClient" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @IdClient Integer -- Int32
SET     @IdClient = 1

INSERT INTO "Issue4620Contract"
(
	"Id",
	"IdClient"
)
VALUES
(
	@Id,
	@IdClient
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @IdClient Integer -- Int32
SET     @IdClient = 2

INSERT INTO "Issue4620Contract"
(
	"Id",
	"IdClient"
)
VALUES
(
	@Id,
	@IdClient
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	(
		SELECT
			"b"."Id",
			"a_Client"."Name"
		FROM
			"Issue4620Table" "b"
				INNER JOIN "Issue4620Client" "a_Client" ON "b"."IdClient" = "a_Client"."Id" AND "b"."IdClient" IS NOT NULL
		WHERE
			"b"."IdClient" IS NOT NULL
		UNION ALL
		SELECT
			"b_1"."Id",
			"a_Client_1"."Name"
		FROM
			"Issue4620Table" "b_1"
				INNER JOIN "Issue4620Contract" "a_Contract" ON "b_1"."IdContract" = "a_Contract"."Id" AND "b_1"."IdContract" IS NOT NULL
				INNER JOIN "Issue4620Client" "a_Client_1" ON "a_Contract"."IdClient" = "a_Client_1"."Id"
		WHERE
			"b_1"."IdContract" IS NOT NULL
	) "t1"
ORDER BY
	"t1"."Id",
	"t1"."Name"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4620Contract')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4620Contract"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4620Client')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4620Client"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4620Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4620Table"';
END

