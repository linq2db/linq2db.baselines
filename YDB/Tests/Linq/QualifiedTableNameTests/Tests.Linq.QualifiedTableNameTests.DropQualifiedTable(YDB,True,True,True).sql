-- YDB Ydb
DROP TABLE IF EXISTS `/local/QualifiedNameTable2`

-- YDB Ydb
CREATE TABLE `/local/QualifiedNameTable2`
(
	ID      Int32,
	`Value` Int32 NOT NULL,

	PRIMARY KEY (ID)
)

-- YDB Ydb
DROP TABLE `/local/QualifiedNameTable2`

