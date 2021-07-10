# examenTecnico_VariablesDisponbiles
Está aplicación consume un web services de banco de guatemala el metodo de variables disponibles el cual retorna un xml el cual se consume con web service client, es aplicacion de consola


exament_variablesdisponibles.TipoCambio service = new exament_variablesdisponibles.TipoCambio();


Tuve un error goalg org.apache el cual me indicaba que la version de compilación no era el correcto
utilice esta plugin para poder compilarlo

<plugin>
	<groupId>org.apache.maven.plugins</groupId>
	<artifactId>maven-compiler-plugin</artifactId>
            <configuration>
                <source>1.8</source>
                <target>1.8</target>
            </configuration>
</plugin>


-->consumido el web service y agregado a un objeto
-->agregando dependencia del mysql en la dependencias de maven
versionde mysql
        <dependency>
            <groupId>mysql</groupId>
            <artifactId>mysql-connector-java</artifactId>
            <version>8.0.25</version>
        </dependency>
