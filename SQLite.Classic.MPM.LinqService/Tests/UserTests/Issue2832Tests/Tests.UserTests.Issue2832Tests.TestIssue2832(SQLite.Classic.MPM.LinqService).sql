(428193) SELECT 
	t428193.Id = t428192.Id
FROM [DctSetpointtype(428192)] as t428192 (spt)
		LEFT JOIN (
			[VWellTree(428195)] as t428195 (t2)
				INNER JOIN [DctOu(428197)] as t428197 (tp2) ON ({t428195.ShopId?}? = {t428197.Id})
				LEFT JOIN [UacUsersDatagroup(428200)] as t428200 (cudg) ON ({t428197.Id} = {t428200.DatagroupId} AND {t428200.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(428205)] as t428205 (oudg) ON ({t428197.ParentId?}? = {t428205.DatagroupId} AND {t428205.UserId} = 150 AND {t428205.Inheritablepermission} > 0)
				INNER JOIN [Deviation(428225)] as t428225 (d) ON ({t428195.WellId?}? = {t428225.WellId})
		)  ON ({t428225.SetpointtypeId} = {t428192.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t428200.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t428205.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
