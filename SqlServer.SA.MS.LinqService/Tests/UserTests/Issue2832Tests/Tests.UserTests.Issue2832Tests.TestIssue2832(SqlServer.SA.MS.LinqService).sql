(492200) SELECT 
	t492200.Id = t492199.Id
FROM [DctSetpointtype(492199)] as t492199 (spt)
		LEFT JOIN (
			[VWellTree(492202)] as t492202 (t2)
				INNER JOIN [DctOu(492204)] as t492204 (tp2) ON ({t492202.ShopId?}? = {t492204.Id})
				LEFT JOIN [UacUsersDatagroup(492207)] as t492207 (cudg) ON ({t492204.Id} = {t492207.DatagroupId} AND {t492207.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(492212)] as t492212 (oudg) ON ({t492204.ParentId?}? = {t492212.DatagroupId} AND {t492212.UserId} = 150 AND {t492212.Inheritablepermission} > 0)
				INNER JOIN [Deviation(492232)] as t492232 (d) ON ({t492202.WellId?}? = {t492232.WellId})
		)  ON ({t492232.SetpointtypeId} = {t492199.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t492207.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t492212.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
