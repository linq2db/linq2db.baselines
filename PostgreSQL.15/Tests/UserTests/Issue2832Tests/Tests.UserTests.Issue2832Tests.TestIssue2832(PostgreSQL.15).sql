(107295) SELECT 
	t107295.Id = t107294.Id
FROM [DctSetpointtype(107294)] as t107294 (spt)
		LEFT JOIN (
			[VWellTree(107297)] as t107297 (t2)
				INNER JOIN [DctOu(107299)] as t107299 (tp2) ON ({t107297.ShopId?}? = {t107299.Id})
				LEFT JOIN [UacUsersDatagroup(107302)] as t107302 (cudg) ON ({t107299.Id} = {t107302.DatagroupId} AND {t107302.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(107307)] as t107307 (oudg) ON ({t107299.ParentId?}? = {t107307.DatagroupId} AND {t107307.UserId} = 150 AND {t107307.Inheritablepermission} > 0)
				INNER JOIN [Deviation(107327)] as t107327 (d) ON ({t107297.WellId?}? = {t107327.WellId})
		)  ON ({t107327.SetpointtypeId} = {t107294.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t107302.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t107307.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
