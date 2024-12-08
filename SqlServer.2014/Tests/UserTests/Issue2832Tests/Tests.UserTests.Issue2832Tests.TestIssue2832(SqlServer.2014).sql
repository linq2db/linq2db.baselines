(240491) SELECT 
	t240491.Id = t240490.Id
FROM [DctSetpointtype(240490)] as t240490 (spt)
		LEFT JOIN (
			[VWellTree(240493)] as t240493 (t2)
				INNER JOIN [DctOu(240495)] as t240495 (tp2) ON ({t240493.ShopId?}? = {t240495.Id})
				LEFT JOIN [UacUsersDatagroup(240498)] as t240498 (cudg) ON ({t240495.Id} = {t240498.DatagroupId} AND {t240498.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(240503)] as t240503 (oudg) ON ({t240495.ParentId?}? = {t240503.DatagroupId} AND {t240503.UserId} = 150 AND {t240503.Inheritablepermission} > 0)
				INNER JOIN [Deviation(240523)] as t240523 (d) ON ({t240493.WellId?}? = {t240523.WellId})
		)  ON ({t240523.SetpointtypeId} = {t240490.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t240498.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t240503.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
