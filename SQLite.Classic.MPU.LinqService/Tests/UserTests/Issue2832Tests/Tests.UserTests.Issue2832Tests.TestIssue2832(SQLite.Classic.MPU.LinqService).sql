(426205) SELECT 
	t426205.Id = t426204.Id
FROM [DctSetpointtype(426204)] as t426204 (spt)
		LEFT JOIN (
			[VWellTree(426207)] as t426207 (t2)
				INNER JOIN [DctOu(426209)] as t426209 (tp2) ON ({t426207.ShopId?}? = {t426209.Id})
				LEFT JOIN [UacUsersDatagroup(426212)] as t426212 (cudg) ON ({t426209.Id} = {t426212.DatagroupId} AND {t426212.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(426217)] as t426217 (oudg) ON ({t426209.ParentId?}? = {t426217.DatagroupId} AND {t426217.UserId} = 150 AND {t426217.Inheritablepermission} > 0)
				INNER JOIN [Deviation(426237)] as t426237 (d) ON ({t426207.WellId?}? = {t426237.WellId})
		)  ON ({t426237.SetpointtypeId} = {t426204.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t426212.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t426217.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
