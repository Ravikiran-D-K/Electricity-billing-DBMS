
				/* DDL (Data definition language) */


CREATE TABLE Electricity_Supply_Companies (
    Short_Form CHAR(6) NOT NULL,
    Name VARCHAR(40) NOT NULL,
    Address TEXT NOT NULL,
    Mobile_no DECIMAL(10) NOT NULL,
    PRIMARY KEY (Short_Form),
    UNIQUE (Name)
);
CREATE TABLE Electricity_Supply_Branches (
    Name VARCHAR(20) NOT NULL,
	C_Short_Form CHAR(6) NOT NULL,
    Address TEXT NOT NULL,
    Mobile_no DECIMAL(10) NOT NULL,
    PRIMARY KEY (Name , C_Short_Form),
    FOREIGN KEY (C_Short_Form)
        REFERENCES Electricity_Supply_Companies (Short_Form)
);
CREATE TABLE Region_Located (
    Region_id INT NOT NULL,
    Region_Name VARCHAR(20) NOT NULL,
    C_Short_Form CHAR(6) NOT NULL,
    BName VARCHAR(20) NOT NULL,
    PRIMARY KEY (Region_id),
    FOREIGN KEY (C_Short_Form)
        REFERENCES Electricity_Supply_Companies (Short_Form),
    FOREIGN KEY (BName)
        REFERENCES Electricity_Supply_Branches (Name)
);
CREATE TABLE Rate (
    Month VARCHAR(10) NOT NULL,
    Region_id INT NOT NULL,
    Average_rate INT NOT NULL,
    PRIMARY KEY (Month , Region_id),
    FOREIGN KEY (Region_id)
        REFERENCES Region_Located (Region_id)
);
CREATE TABLE Electricity_Consumer (
    Con_id INT NOT NULL,
    Con_meter_no INT NOT NULL,
    Region_id INT NOT NULL,
    Con_Name VARCHAR(20) NOT NULL,
    Address TEXT NOT NULL,
    Mobile_no DECIMAL(12) NOT NULL,
    PRIMARY KEY (Con_id),
    FOREIGN KEY (Region_id)
        REFERENCES Region_Located (Region_id),
    UNIQUE (Con_meter_no , Region_id)
);
CREATE TABLE Consumption_Record (
    Month VARCHAR(10) NOT NULL,
    Con_id INT NOT NULL,
    Region_id INT NOT NULL,
    Units_Consumed INT NOT NULL,
    Paid FLOAT NOT NULL,
    Non_paid FLOAT NOT NULL,
    PRIMARY KEY (Month , Con_id),
    FOREIGN KEY (Con_id)
        REFERENCES Electricity_Consumer (Con_id)
        ON DELETE CASCADE,
    FOREIGN KEY (Region_id)
        REFERENCES Region_Located (Region_id)
);
ALTER TABLE Rate
ADD FOREIGN KEY (Month) REFERENCES Consumption_Record(Month);

ALTER TABLE Rate
ADD CHECK (Average_rate>=2);

