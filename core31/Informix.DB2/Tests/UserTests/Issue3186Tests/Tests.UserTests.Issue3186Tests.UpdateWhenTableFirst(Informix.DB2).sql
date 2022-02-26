BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS element_services

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS element_services
(
	id                 NVarChar(100) NOT NULL,
	is_process_service BOOLEAN       NOT NULL,
	is_deleted         BOOLEAN       NOT NULL,

	PRIMARY KEY (id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id VarChar(18) -- String
SET     @id = 'TestProcessService'
DECLARE @is_process_service Char(1) -- StringFixedLength
SET     @is_process_service = 't'
DECLARE @is_deleted Char(1) -- StringFixedLength
SET     @is_deleted = 'f'

INSERT INTO element_services
(
	id,
	is_process_service,
	is_deleted
)
VALUES
(
	@id,
	@is_process_service,
	@is_deleted
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id VarChar(18) -- String
SET     @id = 'TestElementService'
DECLARE @is_process_service Char(1) -- StringFixedLength
SET     @is_process_service = 'f'
DECLARE @is_deleted Char(1) -- StringFixedLength
SET     @is_deleted = 'f'

INSERT INTO element_services
(
	id,
	is_process_service,
	is_deleted
)
VALUES
(
	@id,
	@is_process_service,
	@is_deleted
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS component_categories

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS component_categories
(
	id         NVarChar(100) NOT NULL,
	service_id NVarChar(100) NOT NULL,
	is_deleted BOOLEAN       NOT NULL,

	PRIMARY KEY (id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id VarChar(20) -- String
SET     @id = 'TestProcessCategory1'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Char(1) -- StringFixedLength
SET     @is_deleted = 'f'

INSERT INTO component_categories
(
	id,
	service_id,
	is_deleted
)
VALUES
(
	@id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id VarChar(20) -- String
SET     @id = 'TestProcessCategory2'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Char(1) -- StringFixedLength
SET     @is_deleted = 'f'

INSERT INTO component_categories
(
	id,
	service_id,
	is_deleted
)
VALUES
(
	@id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id VarChar(20) -- String
SET     @id = 'TestElementCategory1'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Char(1) -- StringFixedLength
SET     @is_deleted = 'f'

INSERT INTO component_categories
(
	id,
	service_id,
	is_deleted
)
VALUES
(
	@id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id VarChar(20) -- String
SET     @id = 'TestElementCategory2'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Char(1) -- StringFixedLength
SET     @is_deleted = 'f'

INSERT INTO component_categories
(
	id,
	service_id,
	is_deleted
)
VALUES
(
	@id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Components

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Components
(
	id          NVarChar(100) NOT NULL,
	category_id NVarChar(100) NOT NULL,
	service_id  NVarChar(100) NOT NULL,
	is_deleted  BOOLEAN       NOT NULL,

	PRIMARY KEY (id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id VarChar(21) -- String
SET     @id = 'TestProcessComponent1'
DECLARE @category_id VarChar(20) -- String
SET     @category_id = 'TestProcessCategory1'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Char(1) -- StringFixedLength
SET     @is_deleted = 'f'

INSERT INTO Components
(
	id,
	category_id,
	service_id,
	is_deleted
)
VALUES
(
	@id,
	@category_id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id VarChar(21) -- String
SET     @id = 'TestProcessComponent2'
DECLARE @category_id VarChar(20) -- String
SET     @category_id = 'TestProcessCategory2'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Char(1) -- StringFixedLength
SET     @is_deleted = 'f'

INSERT INTO Components
(
	id,
	category_id,
	service_id,
	is_deleted
)
VALUES
(
	@id,
	@category_id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id VarChar(21) -- String
SET     @id = 'TestElementComponent1'
DECLARE @category_id VarChar(20) -- String
SET     @category_id = 'TestElementCategory1'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Char(1) -- StringFixedLength
SET     @is_deleted = 'f'

INSERT INTO Components
(
	id,
	category_id,
	service_id,
	is_deleted
)
VALUES
(
	@id,
	@category_id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id VarChar(21) -- String
SET     @id = 'TestElementComponent2'
DECLARE @category_id VarChar(20) -- String
SET     @category_id = 'TestElementCategory2'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Char(1) -- StringFixedLength
SET     @is_deleted = 'f'

INSERT INTO Components
(
	id,
	category_id,
	service_id,
	is_deleted
)
VALUES
(
	@id,
	@category_id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @is_deleted Char(1) -- StringFixedLength
SET     @is_deleted = 't'

UPDATE
	component_categories
SET
	component_categories.is_deleted = @is_deleted
WHERE
	EXISTS(
		SELECT
			*
		FROM
			component_categories ctg
				INNER JOIN element_services ie ON ie.id = ctg.service_id
				INNER JOIN Components cm ON ctg.id = cm.category_id AND cm.is_deleted = 'f'
		WHERE
			ie.id = 'TestProcessService' AND component_categories.id = ctg.id
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.id,
	x.service_id,
	x.is_deleted
FROM
	component_categories x
WHERE
	x.is_deleted = 't' AND x.service_id = 'TestProcessService'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.id,
	x.service_id,
	x.is_deleted
FROM
	component_categories x
WHERE
	x.is_deleted = 'f' AND x.service_id <> 'TestProcessService'

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Components

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS component_categories

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS element_services

