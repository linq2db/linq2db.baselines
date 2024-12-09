(241180) SELECT 
	t241180.Id = t241179.Id
FROM [DctSetpointtype(241179)] as t241179 (spt)
		LEFT JOIN (
			[VWellTree(241182)] as t241182 (t2)
				INNER JOIN [DctOu(241184)] as t241184 (tp2) ON ({t241182.ShopId?}? = {t241184.Id})
				LEFT JOIN [UacUsersDatagroup(241187)] as t241187 (cudg) ON ({t241184.Id} = {t241187.DatagroupId} AND {t241187.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(241192)] as t241192 (oudg) ON ({t241184.ParentId?}? = {t241192.DatagroupId} AND {t241192.UserId} = 150 AND {t241192.Inheritablepermission} > 0)
				INNER JOIN [Deviation(241212)] as t241212 (d) ON ({t241182.WellId?}? = {t241212.WellId})
		)  ON ({t241212.SetpointtypeId} = {t241179.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t241187.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t241192.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
