(107357) SELECT 
	t107357.Id = t107356.Id
FROM [DctSetpointtype(107356)] as t107356 (spt)
		LEFT JOIN (
			[VWellTree(107359)] as t107359 (t2)
				INNER JOIN [DctOu(107361)] as t107361 (tp2) ON ({t107359.ShopId?}? = {t107361.Id})
				LEFT JOIN [UacUsersDatagroup(107364)] as t107364 (cudg) ON ({t107361.Id} = {t107364.DatagroupId} AND {t107364.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(107369)] as t107369 (oudg) ON ({t107361.ParentId?}? = {t107369.DatagroupId} AND {t107369.UserId} = 150 AND {t107369.Inheritablepermission} > 0)
				INNER JOIN [Deviation(107389)] as t107389 (d) ON ({t107359.WellId?}? = {t107389.WellId})
		)  ON ({t107389.SetpointtypeId} = {t107356.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t107364.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t107369.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
