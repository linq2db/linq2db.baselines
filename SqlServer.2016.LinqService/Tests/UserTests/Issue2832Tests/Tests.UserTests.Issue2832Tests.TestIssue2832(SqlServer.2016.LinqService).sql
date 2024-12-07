(242286) SELECT 
	t242286.Id = t242285.Id
FROM [DctSetpointtype(242285)] as t242285 (spt)
		LEFT JOIN (
			[VWellTree(242288)] as t242288 (t2)
				INNER JOIN [DctOu(242290)] as t242290 (tp2) ON ({t242288.ShopId?}? = {t242290.Id})
				LEFT JOIN [UacUsersDatagroup(242293)] as t242293 (cudg) ON ({t242290.Id} = {t242293.DatagroupId} AND {t242293.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(242298)] as t242298 (oudg) ON ({t242290.ParentId?}? = {t242298.DatagroupId} AND {t242298.UserId} = 150 AND {t242298.Inheritablepermission} > 0)
				INNER JOIN [Deviation(242318)] as t242318 (d) ON ({t242288.WellId?}? = {t242318.WellId})
		)  ON ({t242318.SetpointtypeId} = {t242285.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t242293.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t242298.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
