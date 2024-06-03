CREATE TABLE password_resets (
  reset_id UUID PRIMARY KEY,
  user_id UUID NOT NULL,
  otp_id UUID NOT NULL,
  expires_at TIMESTAMP NOT NULL,
  used BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (otp_id) REFERENCES otp_requests(otp_id)
);
