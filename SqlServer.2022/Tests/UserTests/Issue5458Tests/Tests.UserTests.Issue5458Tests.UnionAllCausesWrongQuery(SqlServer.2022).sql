-- SqlServer.2022
DECLARE @language NVarChar(4000) -- String
SET     @language = N'de'

SELECT
	[t2].[EventID],
	[t2].[MessageId],
	[t2].[MessageClassId],
	[t2].[MessageKey],
	[t2].[MessageLanguage1],
	[t2].[MessageLanguage2],
	[t2].[MessageLanguage3],
	[t2].[MessageLanguage4],
	[t2].[TranslatedMessage1],
	[t2].[TranslatedMessage2],
	[t2].[TranslatedMessage3],
	[t2].[TranslatedMessage4],
	[mclass].[Id],
	[msg].[Id],
	[msg].[AvailabilityGroupId],
	[msg].[TextName],
	IIF([t2].[MessageLanguage1] IS NOT NULL, CASE
		WHEN [t2].[MessageLanguage4] = @language THEN [t2].[TranslatedMessage4]
		WHEN [t2].[MessageLanguage3] = @language THEN [t2].[TranslatedMessage3]
		WHEN [t2].[MessageLanguage2] = @language THEN [t2].[TranslatedMessage2]
		ELSE [t2].[TranslatedMessage1]
	END, [msg].[TextName]),
	[a].[Id],
	[a2].[Id],
	[msgAddI].[EventId],
	[msgAddI].[Language],
	[msgAddI].[MessageKey]
FROM
	(
		SELECT
			[evt].[MessageId],
			[evt].[MessageClassId],
			[evt].[EventID],
			[evt].[MessageKey],
			[evt].[MessageLanguage1],
			[evt].[MessageLanguage2],
			[evt].[MessageLanguage3],
			[evt].[MessageLanguage4],
			[evt].[TranslatedMessage1],
			[evt].[TranslatedMessage2],
			[evt].[TranslatedMessage3],
			[evt].[TranslatedMessage4]
		FROM
			[MessageEventDTO] [evt]
		UNION ALL
		SELECT
			[t1].[MessageId],
			[t1].[MessageClassId],
			[t1].[EventID],
			[t1].[MessageKey],
			[t1].[MessageLanguage1],
			[t1].[MessageLanguage2],
			[t1].[MessageLanguage3],
			[t1].[MessageLanguage4],
			[t1].[TranslatedMessage1],
			[t1].[TranslatedMessage2],
			[t1].[TranslatedMessage3],
			[t1].[TranslatedMessage4]
		FROM
			[Common_MessageSystem_EventsA] [t1]
	) [t2]
		INNER JOIN [MessageDTO] [msg] ON [t2].[MessageId] = [msg].[Id]
		INNER JOIN [MessageClassDTO] [mclass] ON [t2].[MessageClassId] = [mclass].[Id]
		LEFT JOIN [AvailabilityGroupDTO] [a] ON [msg].[AvailabilityGroupId] = [a].[Id]
		LEFT JOIN [RefMessageEventAvailabilityGroupDTO] [aRef] ON [t2].[EventID] = [aRef].[EventId]
		LEFT JOIN [AvailabilityGroupDTO] [a2] ON [aRef].[AvailabilityGroupId] = [a2].[Id]
		LEFT JOIN [MessageAdditionalInformationDTO] [msgAddI] ON ([t2].[MessageKey] = [msgAddI].[MessageKey] OR [t2].[MessageKey] IS NULL AND [msgAddI].[MessageKey] IS NULL) AND [msgAddI].[Language] = @language

