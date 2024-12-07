(248433) SELECT 
	t248433.Id = t248432.Id
FROM [DctSetpointtype(248432)] as t248432 (spt)
		LEFT JOIN (
			[VWellTree(248435)] as t248435 (t2)
				INNER JOIN [DctOu(248437)] as t248437 (tp2) ON ({t248435.ShopId?}? = {t248437.Id})
				LEFT JOIN [UacUsersDatagroup(248440)] as t248440 (cudg) ON ({t248437.Id} = {t248440.DatagroupId} AND {t248440.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(248445)] as t248445 (oudg) ON ({t248437.ParentId?}? = {t248445.DatagroupId} AND {t248445.UserId} = 150 AND {t248445.Inheritablepermission} > 0)
				INNER JOIN [Deviation(248465)] as t248465 (d) ON ({t248435.WellId?}? = {t248465.WellId})
		)  ON ({t248465.SetpointtypeId} = {t248432.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t248440.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t248445.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
