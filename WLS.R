#weighted least square regression


GPSmodel <- lm(bmi ~ V48 + age + sex + pc1 + pc2 + pc3 + pc4 + pc5 + pc6 + pc7 + pc8 + pc9 + pc10 + array, data = al)

wt1 <- 1 / lm(abs(GPSmodel$residuals) ~ GPSmodel$fitted.values)$fitted.values^2

wtgps <- lm(bmi ~ V48 + age + sex + pc1 + pc2 + pc3 + pc4 + pc5 + pc6 + pc7 + pc8 + pc9 + pc10 + array, data = al,weights=wt1)
