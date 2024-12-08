(107303) SELECT 
	t107303.Id = t107302.Id
FROM [DctSetpointtype(107302)] as t107302 (spt)
		LEFT JOIN (
			[VWellTree(107305)] as t107305 (t2)
				INNER JOIN [DctOu(107307)] as t107307 (tp2) ON ({t107305.ShopId?}? = {t107307.Id})
				LEFT JOIN [UacUsersDatagroup(107310)] as t107310 (cudg) ON ({t107307.Id} = {t107310.DatagroupId} AND {t107310.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(107315)] as t107315 (oudg) ON ({t107307.ParentId?}? = {t107315.DatagroupId} AND {t107315.UserId} = 150 AND {t107315.Inheritablepermission} > 0)
				INNER JOIN [Deviation(107335)] as t107335 (d) ON ({t107305.WellId?}? = {t107335.WellId})
		)  ON ({t107335.SetpointtypeId} = {t107302.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t107310.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t107315.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
