(250728) SELECT 
	t250728.Id = t250727.Id
FROM [DctSetpointtype(250727)] as t250727 (spt)
		LEFT JOIN (
			[VWellTree(250730)] as t250730 (t2)
				INNER JOIN [DctOu(250732)] as t250732 (tp2) ON ({t250730.ShopId?}? = {t250732.Id})
				LEFT JOIN [UacUsersDatagroup(250735)] as t250735 (cudg) ON ({t250732.Id} = {t250735.DatagroupId} AND {t250735.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(250740)] as t250740 (oudg) ON ({t250732.ParentId?}? = {t250740.DatagroupId} AND {t250740.UserId} = 150 AND {t250740.Inheritablepermission} > 0)
				INNER JOIN [Deviation(250760)] as t250760 (d) ON ({t250730.WellId?}? = {t250760.WellId})
		)  ON ({t250760.SetpointtypeId} = {t250727.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t250735.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t250740.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
