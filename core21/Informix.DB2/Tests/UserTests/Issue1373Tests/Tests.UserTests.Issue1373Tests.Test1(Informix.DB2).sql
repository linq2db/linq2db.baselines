BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Issue1373Tests
(
	Id     Int           NOT NULL,
	Field1 NVarChar(255)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Field1 VarChar -- String
SET     @Field1 = NULL

INSERT INTO Issue1373Tests
(
	Id,
	Field1
)
VALUES
(
	@Id,
	@Field1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Field1 VarChar -- String
SET     @Field1 = NULL

INSERT INTO Issue1373Tests
(
	Id,
	Field1
)
VALUES
(
	@Id,
	@Field1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Field1 VarChar(4) -- String
SET     @Field1 = 'test'

INSERT INTO Issue1373Tests
(
	Id,
	Field1
)
VALUES
(
	@Id,
	@Field1
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Issue1373Tests

