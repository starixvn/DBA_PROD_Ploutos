USE blueberrydb;

ALTER TABLE PlayerRegistrations ADD INDEX UserAccountNo (UserAccountNo);
ALTER TABLE PlayerRegistrations ADD INDEX Email (Email);
ALTER TABLE PlayerRegistrations ADD INDEX DateCreated (DateCreated);
ALTER TABLE WalletComputedBalances ADD INDEX WalletId (WalletId);
ALTER TABLE AspNetUsers ADD INDEX UserName (UserName);
ALTER TABLE UserTokens ADD INDEX UserId (UserId);
ALTER TABLE UserTokens ADD INDEX TokenId (TokenId);
ALTER TABLE Betlogs ADD INDEX TransactionNo (TransactionNo);
ALTER TABLE Betlogs ADD INDEX Flags (IsProcessed, IsBeingProcessed);
ALTER TABLE PlayerBets ADD INDEX TransactionDate (TransactionDate);
ALTER TABLE Wallets ADD INDEX PlayerProfileId (PlayerProfileId);

ALTER TABLE WalletLosses ADD INDEX TransactionNo (TransactionNo);
ALTER TABLE WalletWins ADD INDEX TransactionNo (TransactionNo);

-- 20200210 --
ALTER TABLE PlayerBets ADD INDEX Flags (IsBeingProcess, IsProcessed, SettlementDate);
ALTER TABLE PlayerProfiles ADD INDEX PlayerRegistrationId (PlayerRegistrationId);
ALTER TABLE PlayerFingerPrintHits ADD INDEX FingerPrint (FingerPrint);
ALTER TABLE PlayerAccessLogs ADD INDEX LogDateTime (LogDateTime);

ALTER TABLE WalletLosses ADD INDEX TransactionDate (TransactionDate);
ALTER TABLE WalletWins ADD INDEX TransactionDate (TransactionDate);