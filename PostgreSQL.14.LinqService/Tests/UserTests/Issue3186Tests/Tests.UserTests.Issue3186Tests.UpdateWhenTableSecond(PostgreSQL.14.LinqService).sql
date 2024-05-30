BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS element_services

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS element_services
(
	id                 text    NOT NULL,
	is_process_service Boolean NOT NULL,
	is_deleted         Boolean NOT NULL,

	CONSTRAINT "PK_element_services" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Text(18) -- String
SET     @id = 'TestProcessService'
DECLARE @is_process_service Boolean
SET     @is_process_service = True
DECLARE @is_deleted Boolean
SET     @is_deleted = False

INSERT INTO element_services
(
	id,
	is_process_service,
	is_deleted
)
VALUES
(
	:id,
	:is_process_service,
	:is_deleted
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Text(18) -- String
SET     @id = 'TestElementService'
DECLARE @is_process_service Boolean
SET     @is_process_service = False
DECLARE @is_deleted Boolean
SET     @is_deleted = False

INSERT INTO element_services
(
	id,
	is_process_service,
	is_deleted
)
VALUES
(
	:id,
	:is_process_service,
	:is_deleted
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS component_categories

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS component_categories
(
	id         text    NOT NULL,
	service_id text    NOT NULL,
	is_deleted Boolean NOT NULL,

	CONSTRAINT "PK_component_categories" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Text(20) -- String
SET     @id = 'TestProcessCategory1'
DECLARE @service_id Text(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Boolean
SET     @is_deleted = False

INSERT INTO component_categories
(
	id,
	service_id,
	is_deleted
)
VALUES
(
	:id,
	:service_id,
	:is_deleted
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Text(20) -- String
SET     @id = 'TestProcessCategory2'
DECLARE @service_id Text(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Boolean
SET     @is_deleted = False

INSERT INTO component_categories
(
	id,
	service_id,
	is_deleted
)
VALUES
(
	:id,
	:service_id,
	:is_deleted
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Text(20) -- String
SET     @id = 'TestElementCategory1'
DECLARE @service_id Text(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Boolean
SET     @is_deleted = False

INSERT INTO component_categories
(
	id,
	service_id,
	is_deleted
)
VALUES
(
	:id,
	:service_id,
	:is_deleted
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Text(20) -- String
SET     @id = 'TestElementCategory2'
DECLARE @service_id Text(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Boolean
SET     @is_deleted = False

INSERT INTO component_categories
(
	id,
	service_id,
	is_deleted
)
VALUES
(
	:id,
	:service_id,
	:is_deleted
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Components"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Components"
(
	id          text    NOT NULL,
	category_id text    NOT NULL,
	service_id  text    NOT NULL,
	is_deleted  Boolean NOT NULL,

	CONSTRAINT "PK_Components" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Text(21) -- String
SET     @id = 'TestProcessComponent1'
DECLARE @category_id Text(20) -- String
SET     @category_id = 'TestProcessCategory1'
DECLARE @service_id Text(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Boolean
SET     @is_deleted = False

INSERT INTO "Components"
(
	id,
	category_id,
	service_id,
	is_deleted
)
VALUES
(
	:id,
	:category_id,
	:service_id,
	:is_deleted
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Text(21) -- String
SET     @id = 'TestProcessComponent2'
DECLARE @category_id Text(20) -- String
SET     @category_id = 'TestProcessCategory2'
DECLARE @service_id Text(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Boolean
SET     @is_deleted = False

INSERT INTO "Components"
(
	id,
	category_id,
	service_id,
	is_deleted
)
VALUES
(
	:id,
	:category_id,
	:service_id,
	:is_deleted
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Text(21) -- String
SET     @id = 'TestElementComponent1'
DECLARE @category_id Text(20) -- String
SET     @category_id = 'TestElementCategory1'
DECLARE @service_id Text(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Boolean
SET     @is_deleted = False

INSERT INTO "Components"
(
	id,
	category_id,
	service_id,
	is_deleted
)
VALUES
(
	:id,
	:category_id,
	:service_id,
	:is_deleted
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Text(21) -- String
SET     @id = 'TestElementComponent2'
DECLARE @category_id Text(20) -- String
SET     @category_id = 'TestElementCategory2'
DECLARE @service_id Text(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Boolean
SET     @is_deleted = False

INSERT INTO "Components"
(
	id,
	category_id,
	service_id,
	is_deleted
)
VALUES
(
	:id,
	:category_id,
	:service_id,
	:is_deleted
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @is_deleted Boolean
SET     @is_deleted = True

UPDATE
	component_categories
SET
	is_deleted = :is_deleted
FROM
	element_services ct
		INNER JOIN component_categories ctg ON ct.id = ctg.service_id
		INNER JOIN "Components" cm ON ctg.id = cm.category_id AND cm.is_deleted = False
WHERE
	ct.id = 'TestProcessService' AND component_categories.id = ctg.id

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	x.id,
	x.service_id,
	x.is_deleted
FROM
	component_categories x
WHERE
	x.is_deleted = True AND x.service_id = 'TestProcessService'

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	x.id,
	x.service_id,
	x.is_deleted
FROM
	component_categories x
WHERE
	x.is_deleted = False AND x.service_id <> 'TestProcessService'

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Components"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS component_categories

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS element_services

