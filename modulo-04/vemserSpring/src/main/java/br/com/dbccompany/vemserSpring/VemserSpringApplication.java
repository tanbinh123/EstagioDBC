package br.com.dbccompany.vemserSpring;

import br.com.dbccompany.vemserSpring.Entity.Elfo;
import br.com.dbccompany.vemserSpring.Service.ElfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;


@SpringBootApplication
public class VemserSpringApplication {

	@Autowired
    ElfoService service;
	
	public static void main(String[] args) {
		SpringApplication.run(VemserSpringApplication.class, args);
	}

	@Bean
    public CommandLineRunner commandLineRunner(ApplicationContext ctx){
        return args -> {
            Elfo elfo = new Elfo("Legolas");
            service.salvar(elfo);
        };
    } 
}
