-- Firebird.5 Firebird4

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
SELECT 1 FROM rdb$database

-- Firebird.5 Firebird4

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
SELECT 2 FROM rdb$database

-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 3

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	@Id
)

-- Firebird.5 Firebird4

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
SELECT 10 FROM rdb$database

-- Firebird.5 Firebird4

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
SELECT 20 FROM rdb$database

-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 30

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	@Id
)

