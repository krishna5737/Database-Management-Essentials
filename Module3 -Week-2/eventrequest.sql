SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE EventRequest;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE EventRequest (
  evntNo      CHAR(8)       NOT NULL,
  custNo      CHAR(8)       NOT NULL,
  facNo       CHAR(8)       NOT NULL,
  dateHeld    DATE          NOT NULL,
  dateReq     DATE          NOT NULL,
  dateAuth    DATE,
  status      CHAR(20)      NOT NULL,
  estCost     DECIMAL(8, 2) NOT NULL,
  estAudience INTEGER       NOT NULL,
  budNo       CHAR(30),
  CONSTRAINT EventRequestPK PRIMARY KEY (evntNo),
  CONSTRAINT FK_Facility FOREIGN KEY (facNo) REFERENCES Facility (facNo),
  CONSTRAINT FK_Customer FOREIGN KEY (custNo) REFERENCES Customer (custNo)
);

INSERT INTO EventRequest (evntNo, custNo, facNo, dateHeld, dateReq, dateAuth, status, estCost, estAudience, budNo)
VALUES ('E100', 'C100', 'F100', '2013-10-25', '2013-06-06', '2013-06-08', 'Approved', '5000.00', '80000', 'B1000');
#
INSERT INTO EventRequest (evntNo, custNo, facNo, dateHeld, dateReq, dateAuth, status, estCost, estAudience, budNo)
VALUES ('E101', 'C100', 'F100', '2013-10-26', '2013-07-28', NULL, 'Pending', '5000.00', '80000', 'B1000');
#
INSERT INTO EventRequest (evntNo, custNo, facNo, dateHeld, dateReq, dateAuth, status, estCost, estAudience, budNo)
VALUES ('E102', 'C100', 'F100', '2013-09-14', '2013-07-28', '2013-07-31', 'Approved', '5000.00', '80000', 'B1000');
#
INSERT INTO EventRequest (evntNo, custNo, facNo, dateHeld, dateReq, dateAuth, status, estCost, estAudience, budNo)
VALUES ('E103', 'C100', 'F100', '2013-09-21', '2013-07-28', '2013-08-01', 'Approved', '5000.00', '80000', 'B1000');
#
INSERT INTO EventRequest (evntNo, custNo, facNo, dateHeld, dateReq, dateAuth, status, estCost, estAudience, budNo)
VALUES ('E104', 'C101', 'F101', '2013-12-03', '2013-07-28', '2013-07-31', 'Approved', '2000.00', '12000', 'B1000');
#
INSERT INTO EventRequest (evntNo, custNo, facNo, dateHeld, dateReq, dateAuth, status, estCost, estAudience, budNo)
VALUES ('E105', 'C101', 'F101', '2013-12-05', '2013-07-28', '2013-08-01', 'Approved', '2000.00', '10000', 'B1000');
#
INSERT INTO EventRequest (evntNo, custNo, facNo, dateHeld, dateReq, dateAuth, status, estCost, estAudience, budNo)
VALUES ('E106', 'C101', 'F101', '2013-12-12', '2013-07-28', '2013-07-31', 'Approved', '2000.00', '10000', 'B1000');
#
INSERT INTO EventRequest (evntNo, custNo, facNo, dateHeld, dateReq, dateAuth, status, estCost, estAudience, budNo)
VALUES ('E107', 'C105', 'F100', '2013-11-23', '2013-07-28', '2013-07-31', 'Denied', '10000.00', '5000', NULL);