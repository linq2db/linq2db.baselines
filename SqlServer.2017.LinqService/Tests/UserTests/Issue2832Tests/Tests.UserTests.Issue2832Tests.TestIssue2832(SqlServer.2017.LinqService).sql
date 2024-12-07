(243976) SELECT 
	t243976.Id = t243975.Id
FROM [DctSetpointtype(243975)] as t243975 (spt)
		LEFT JOIN (
			[VWellTree(243978)] as t243978 (t2)
				INNER JOIN [DctOu(243980)] as t243980 (tp2) ON ({t243978.ShopId?}? = {t243980.Id})
				LEFT JOIN [UacUsersDatagroup(243983)] as t243983 (cudg) ON ({t243980.Id} = {t243983.DatagroupId} AND {t243983.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(243988)] as t243988 (oudg) ON ({t243980.ParentId?}? = {t243988.DatagroupId} AND {t243988.UserId} = 150 AND {t243988.Inheritablepermission} > 0)
				INNER JOIN [Deviation(244008)] as t244008 (d) ON ({t243978.WellId?}? = {t244008.WellId})
		)  ON ({t244008.SetpointtypeId} = {t243975.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t243983.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t243988.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
