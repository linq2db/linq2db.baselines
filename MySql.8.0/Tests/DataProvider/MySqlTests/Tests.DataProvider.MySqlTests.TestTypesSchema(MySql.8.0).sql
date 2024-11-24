BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TestSchemaTypesTable`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `TestSchemaTypesTable`
(
	`VarCharDefault`     VARCHAR(4000)          NULL,
	`VarChar1`           VARCHAR(1)             NULL,
	`VarChar112`         VARCHAR(112)           NULL,
	`Char`               CHAR               NOT NULL,
	`Char255`            CHAR(255)              NULL,
	`Char1`              CHAR                   NULL,
	`Char112`            CHAR(112)              NULL,
	`VarBinary1`         VARBINARY(1)           NULL,
	`VarBinary255`       VARBINARY(255)         NULL,
	`VarBinary3`         VARBINARY(3)           NULL,
	`Binary1`            BINARY                 NULL,
	`Binary255`          BINARY(255)            NULL,
	`Binary3`            BINARY(3)              NULL,
	`TinyBlob`           TINYBLOB               NULL,
	`Blob`               BLOB                   NULL,
	`MediumBlob`         MEDIUMBLOB             NULL,
	`BlobDefault`        BLOB                   NULL,
	`LongBlob`           LONGBLOB               NULL,
	`TinyText`           TINYTEXT               NULL,
	`Text`               TEXT                   NULL,
	`MediumText`         MEDIUMTEXT             NULL,
	`LongText`           LONGTEXT               NULL,
	`TextDefault`        TEXT                   NULL,
	`Date`               DATE               NOT NULL,
	`DateTime`           DATETIME           NOT NULL,
	`DateTime3`          DATETIME(3)        NOT NULL,
	`TimeStamp`          TIMESTAMP          NOT NULL,
	`TimeStamp5`         TIMESTAMP(5)       NOT NULL,
	`Time`               TIME               NOT NULL,
	`Time2`              TIME(2)            NOT NULL,
	`TinyInt`            TINYINT            NOT NULL,
	`UnsignedTinyInt`    TINYINT UNSIGNED   NOT NULL,
	`SmallInt`           SMALLINT           NOT NULL,
	`UnsignedSmallInt`   SMALLINT UNSIGNED  NOT NULL,
	`Int`                INT                NOT NULL,
	`UnsignedInt`        INT UNSIGNED       NOT NULL,
	`BigInt`             BIGINT             NOT NULL,
	`UnsignedBigInt`     BIGINT UNSIGNED    NOT NULL,
	`Decimal`            DECIMAL(29, 10)    NOT NULL,
	`Decimal15_0`        DECIMAL(15, 0)     NOT NULL,
	`Decimal10_5`        DECIMAL(10, 5)     NOT NULL,
	`Decimal20_2`        DECIMAL(20, 2)     NOT NULL,
	`Float`              FLOAT              NOT NULL,
	`Float10`            FLOAT              NOT NULL,
	`Double`             DOUBLE             NOT NULL,
	`Float30`            DOUBLE             NOT NULL,
	`Bool`               BOOLEAN            NOT NULL,
	`Bit1`               BIT                NOT NULL,
	`Bit8`               BIT(8)             NOT NULL,
	`Bit16`              BIT(16)            NOT NULL,
	`Bit32`              BIT(32)            NOT NULL,
	`Bit10`              BIT(10)            NOT NULL,
	`Bit64`              BIT(64)            NOT NULL,
	`Json`               JSON                   NULL,
	`Guid`               CHAR(36)           NOT NULL,
	`Enum`               ENUM('one', 'two')     NULL,
	`Set`                SET('one', 'two')      NULL,
	`Year`               YEAR               NOT NULL,
	`MediumInt`          MEDIUMINT          NOT NULL,
	`UnsignedMediumInt`  MEDIUMINT UNSIGNED NOT NULL,
	`Geometry`           GEOMETRY               NULL,
	`Point`              POINT                  NULL,
	`LineString`         LINESTRING             NULL,
	`Polygon`            POLYGON                NULL,
	`MultiPoint`         MULTIPOINT             NULL,
	`MultiLineString`    MULTILINESTRING        NULL,
	`MultiPolygon`       MULTIPOLYGON           NULL,
	`GeometryCollection` GEOMETRYCOLLECTION     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80


SELECT
		TABLE_SCHEMA,
		TABLE_NAME,
		TABLE_TYPE,
		TABLE_COMMENT
	FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLE_SCHEMA = DATABASE()

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80


			SELECT
					CONCAT(lower(k.CONSTRAINT_SCHEMA),'..',k.TABLE_NAME) as TableID,
					k.CONSTRAINT_NAME                                    as PrimaryKeyName,
					k.COLUMN_NAME                                        as ColumnName,
					k.ORDINAL_POSITION                                   as Ordinal
				FROM
					INFORMATION_SCHEMA.KEY_COLUMN_USAGE k
					JOIN
						INFORMATION_SCHEMA.TABLE_CONSTRAINTS c
					ON
						k.CONSTRAINT_CATALOG = c.CONSTRAINT_CATALOG AND
						k.CONSTRAINT_SCHEMA  = c.CONSTRAINT_SCHEMA AND
						k.CONSTRAINT_NAME    = c.CONSTRAINT_NAME AND
						k.TABLE_NAME         = c.TABLE_NAME
				WHERE
					c.CONSTRAINT_TYPE   ='PRIMARY KEY' AND
					c.CONSTRAINT_SCHEMA = database()

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80


SELECT
		DATA_TYPE,
		COLUMN_TYPE,
		TABLE_SCHEMA,
		TABLE_NAME,
		COLUMN_NAME,
		IS_NULLABLE,
		ORDINAL_POSITION,
		CHARACTER_MAXIMUM_LENGTH,
		NUMERIC_PRECISION,
		NUMERIC_SCALE,
		EXTRA,
		COLUMN_COMMENT
	FROM INFORMATION_SCHEMA.COLUMNS
	WHERE TABLE_SCHEMA = DATABASE()

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80


SELECT
		c.TABLE_SCHEMA,
		c.TABLE_NAME,
		c.CONSTRAINT_NAME,
		c.COLUMN_NAME,
		c.REFERENCED_TABLE_SCHEMA,
		c.REFERENCED_TABLE_NAME,
		c.REFERENCED_COLUMN_NAME,
		c.ORDINAL_POSITION
	FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE c
		INNER JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS tc
			ON c.CONSTRAINT_SCHEMA    = tc.CONSTRAINT_SCHEMA
				AND c.CONSTRAINT_NAME = tc.CONSTRAINT_NAME
				AND c.TABLE_SCHEMA    = tc.TABLE_SCHEMA
				AND c.TABLE_NAME      = tc.TABLE_NAME
	WHERE tc.CONSTRAINT_TYPE = 'FOREIGN KEY'
		AND c.TABLE_SCHEMA   = DATABASE()

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TestSchemaTypesTable`

