(248472) SELECT 
	t248472.Id = t248471.Id
FROM [DctSetpointtype(248471)] as t248471 (spt)
		LEFT JOIN (
			[VWellTree(248474)] as t248474 (t2)
				INNER JOIN [DctOu(248476)] as t248476 (tp2) ON ({t248474.ShopId?}? = {t248476.Id})
				LEFT JOIN [UacUsersDatagroup(248479)] as t248479 (cudg) ON ({t248476.Id} = {t248479.DatagroupId} AND {t248479.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(248484)] as t248484 (oudg) ON ({t248476.ParentId?}? = {t248484.DatagroupId} AND {t248484.UserId} = 150 AND {t248484.Inheritablepermission} > 0)
				INNER JOIN [Deviation(248504)] as t248504 (d) ON ({t248474.WellId?}? = {t248504.WellId})
		)  ON ({t248504.SetpointtypeId} = {t248471.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t248479.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t248484.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
