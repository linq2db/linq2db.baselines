(106766) SELECT 
	t106766.Id = t106765.Id
FROM [DctSetpointtype(106765)] as t106765 (spt)
		LEFT JOIN (
			[VWellTree(106768)] as t106768 (t2)
				INNER JOIN [DctOu(106770)] as t106770 (tp2) ON ({t106768.ShopId?}? = {t106770.Id})
				LEFT JOIN [UacUsersDatagroup(106773)] as t106773 (cudg) ON ({t106770.Id} = {t106773.DatagroupId} AND {t106773.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(106778)] as t106778 (oudg) ON ({t106770.ParentId?}? = {t106778.DatagroupId} AND {t106778.UserId} = 150 AND {t106778.Inheritablepermission} > 0)
				INNER JOIN [Deviation(106798)] as t106798 (d) ON ({t106768.WellId?}? = {t106798.WellId})
		)  ON ({t106798.SetpointtypeId} = {t106765.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t106773.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t106778.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
