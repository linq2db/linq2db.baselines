(426190) SELECT 
	t426190.Id = t426189.Id
FROM [DctSetpointtype(426189)] as t426189 (spt)
		LEFT JOIN (
			[VWellTree(426192)] as t426192 (t2)
				INNER JOIN [DctOu(426194)] as t426194 (tp2) ON ({t426192.ShopId?}? = {t426194.Id})
				LEFT JOIN [UacUsersDatagroup(426197)] as t426197 (cudg) ON ({t426194.Id} = {t426197.DatagroupId} AND {t426197.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(426202)] as t426202 (oudg) ON ({t426194.ParentId?}? = {t426202.DatagroupId} AND {t426202.UserId} = 150 AND {t426202.Inheritablepermission} > 0)
				INNER JOIN [Deviation(426222)] as t426222 (d) ON ({t426192.WellId?}? = {t426222.WellId})
		)  ON ({t426222.SetpointtypeId} = {t426189.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t426197.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t426202.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
