package com.fh.scms.controllers.api;

import com.fh.scms.dto.tax.TaxResponse;
import com.fh.scms.services.TaxService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/taxes", produces = "application/json; charset=UTF-8")
public class APITaxController {

    private final TaxService taxService;

    @GetMapping
    public ResponseEntity<?> getTaxes(@RequestParam(required = false, defaultValue = "") Map<String, String> params) {
        List<TaxResponse> taxes = this.taxService.getAllTaxResponse(params);

        return ResponseEntity.ok(taxes);
    }
}
